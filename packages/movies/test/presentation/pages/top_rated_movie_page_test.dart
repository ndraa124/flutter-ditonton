import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movies/movies.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockMovieBloc mockBloc;

  setUp(() {
    mockBloc = MockMovieBloc();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<MovieBloc>.value(
      value: mockBloc,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets('Page should display progress bar when loading', (widget) async {
    final movieBloc = MovieState.initial().copyWith(
      topRatedState: RequestState.loading,
    );

    when(mockBloc.stream).thenAnswer((_) => Stream.value(movieBloc));
    when(mockBloc.state).thenReturn(movieBloc);

    final progressFinder = find.byType(CircularProgressIndicator);
    final centerFinder = find.byType(Center);

    await widget.pumpWidget(makeTestableWidget(const TopRatedMoviesPage()));

    expect(centerFinder, findsOneWidget);
    expect(progressFinder, findsOneWidget);
  });

  testWidgets('Page should display when data is loaded', (widget) async {
    final movieBloc = MovieState.initial().copyWith(
      topRatedState: RequestState.success,
      topRatedList: testMovieList,
    );

    when(mockBloc.stream).thenAnswer((_) => Stream.value(movieBloc));
    when(mockBloc.state).thenReturn(movieBloc);

    final listViewFinder = find.byType(ListView);

    await widget.pumpWidget(makeTestableWidget(const TopRatedMoviesPage()));

    expect(listViewFinder, findsOneWidget);
  });

  testWidgets('Page should display text with message when empty',
      (widget) async {
    final movieBloc = MovieState.initial().copyWith(
      topRatedState: RequestState.empty,
      message: 'Failed',
    );

    when(mockBloc.stream).thenAnswer((_) => Stream.value(movieBloc));
    when(mockBloc.state).thenReturn(movieBloc);

    final textFinder = find.byKey(const Key('empty_message'));

    await widget.pumpWidget(makeTestableWidget(const TopRatedMoviesPage()));

    expect(textFinder, findsOneWidget);
  });

  testWidgets('Page should display text with message when Error',
      (widget) async {
    final movieBloc = MovieState.initial().copyWith(
      topRatedState: RequestState.error,
      message: 'Failed',
    );

    when(mockBloc.stream).thenAnswer((_) => Stream.value(movieBloc));
    when(mockBloc.state).thenReturn(movieBloc);

    final textFinder = find.byKey(const Key('error_message'));

    await widget.pumpWidget(makeTestableWidget(const TopRatedMoviesPage()));

    expect(textFinder, findsOneWidget);
  });
}
