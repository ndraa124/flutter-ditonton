#!/usr/bin/env bash

# https://medium.com/@nocnoc/combined-code-coverage-for-flutter-and-dart-237b9563ecf8

error=false

show_help() {
  printf "usage: $0 [--help] [--report] [<path to package>]
Tool for running all unit and widget tests with code coverage.
(run from root of repo)
where:
    <path to package>
        run tests for package at path only
        (otherwise runs all tests)
    --report
        run a coverage report
        (requires lcov installed)
    --help
        print this message
requires code_coverage package
(install with 'pub global activate coverage')
"
  exit 1
}

# run unit and widget tests
runTests() {
  local package_dir=$1
  local repo_dir=$2
  cd $package_dir

  if [[ -f "pubspec.yaml" ]] && [[ -d "test" ]]; then
    echo $'\n'"=== running get package ==="
    flutter packages get

    # run tests with coverage
    echo $'\n'"=== running tests in $1 ==="
    if grep flutter pubspec.yaml >/dev/null; then
      if [[ -f "test/all_tests.dart" ]]; then
        flutter test --coverage $(pwd)/test/all_tests.dart || error=true
      else
        flutter test --coverage || error=true
      fi
    fi
    combineCoverage $package_dir $repo_dir
  fi
  cd - >/dev/null
}

# combine coverage into a single file for reporting
combineCoverage() {
  local package_dir=$1
  local repo_dir=$2
  escapedPath="$(echo $package_dir | sed 's/\//\\\//g')"
  if [[ -d "coverage" ]]; then
    sed "s/^SF:lib/SF:$escapedPath\/lib/g" $(pwd)/coverage/lcov.info >>$repo_dir/lcov.info
    rm -rf "coverage"
  fi
}

runReport() {
  echo $'\n'"=== running generate report ==="
  if [[ -f "lcov.info" ]] && ! [[ "$TRAVIS" ]]; then
    if $IsWindows || $ENV:OS; then
      perl $printenv $GENHTML lcov.info -o coverage --no-function-coverage -s -p $(pwd)
      start coverage/index.html
    else
      genhtml lcov.info -o coverage --no-function-coverage -s -p $(pwd)
      open coverage/index.html
    fi
  fi
}

if ! [[ -d .git ]]; then
  printf "\nError: not in root of repo"
  show_help
fi

case $1 in
--help)
  show_help
  ;;
--report)
  if ! [[ -z ${2+x} ]]; then
    printf "\nError: no extra parameters required: $2"
    show_help
  fi
  runReport
  ;;
*)
  repo_dir=$(pwd)
  # if no parameter passed
  if [[ -z $1 ]]; then
    rm -f lcov.info
    package_dirs=($(find . -maxdepth 2 -type d))
    for package_dir in "${package_dirs[@]}"; do
      runTests $package_dir $repo_dir
    done
  else
    if [[ -d "$1" ]]; then
      runTests $1 $repo_dir
    else
      printf "\nError: not a directory: $1"
      show_help
    fi
  fi
  runReport
  ;;
esac

#Fail the build if there was an error
if [[ "$error" = true ]]; then
  exit -1
fi
