#!/usr/bin/env bash

# https://medium.com/@nocnoc/combined-code-coverage-for-flutter-and-dart-237b9563ecf8

error=false

show_help() {
    printf "\n\nusage: $0 [--get] [--get-runner] [--runner] [--analyze] [--clean] [--report] [<path to app package>]
Tool for managing CI builds.
(run from root of repo)
where:
    --get
      get all dependencies
    --get-runner
      get all dependencies & rebuild runner for mock
    --runner
      rebuild runner for testing
    --analyze
      analyze dart code for all packages
    --clean
      clean all builds
    --report
      run a coverage report
      (requires lcov installed)
    --help
      print this message
    <path to app package>
      run flutter driver for app at path
"
    exit 1
}

# run unit and widget tests
runTests() {
  local package_dir=$1
  local repo_dir=$2
  cd $package_dir

  if [[ -f "pubspec.yaml" ]] && [[ -d "test" ]]; then
    echo $'\n'"=== running get package in $1 ==="
    flutter packages get

    echo $'\n'"=== running rebuild runner in $1 ==="
    flutter pub run build_runner build --delete-conflicting-outputs

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

# run function in all dirs
# expects a function name
allDirs() {
    dirs=(`find . -maxdepth 2 -type d`)
    for dir in "${dirs[@]}"; do
        $1 $dir
    done
}

runGet() {
    cd $1
    if [ -f "pubspec.yaml" ]; then
      echo "=== running get package in $1 ==="
      flutter packages get
    fi
    cd - > /dev/null
}

runBuildRunner() {
    cd $1
    if [ -f "pubspec.yaml" ]; then
      echo $'\n'"=== running build runner in $1==="
      flutter pub run build_runner build --delete-conflicting-outputs
    fi
    cd - > /dev/null
}

runClean() {
  cd $1;
  if [ -f "pubspec.yaml" ]; then
    echo "=== running clean in $1 ==="
    flutter clean > /dev/null
    rm -rf ios/Pods ios/Podfile.lock
    rm -rf android/.gradle
    rm -rf coverage
  fi
  cd - > /dev/null
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

if ! [[ -d .git ]]; then
  printf "\nError: not in root of repo"
  show_help
fi

case $1 in
  --get)
    allDirs "runGet"
    ;;
  --get-runner)
    allDirs "runGet"
    allDirs "runBuildRunner"
    ;;
  --analyze)
    echo "=== running analyze package in $1 ==="
    flutter analyze
    ;;
  --clean)
    allDirs "runClean"
    ;;
  --runner)
    allDirs "runBuildRunner"
    ;;
  --report)
    if ! [[ -z ${2+x} ]]; then
      printf "\nError: no extra parameters required: $2"
      show_help
    fi
    runReport
    ;;
  --help)
    show_help
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
