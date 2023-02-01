import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:search/search.dart';

import '../../dummy_data/dummy_objects.dart';
import 'movie_search_notifier_test.mocks.dart';

@GenerateMocks([SearchMovies])
void main() {
  late MovieSearchNotifier provider;
  late MockSearchMovies mockSearchMovies;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockSearchMovies = MockSearchMovies();
    provider = MovieSearchNotifier(searchMovies: mockSearchMovies)
      ..addListener(() {
        listenerCallCount += 1;
      });
  });

  group('search movies', () {
    test('should change state to loading when usecase is called', () async {
      when(mockSearchMovies.execute(tQueryTv))
          .thenAnswer((_) async => Right(tMovieList));

      provider.fetchMovieSearch(tQueryTv);
      expect(provider.state, RequestState.Loading);
    });

    test('should change search result data when data is gotten successfully',
        () async {
      when(mockSearchMovies.execute(tQueryTv))
          .thenAnswer((_) async => Right(tMovieList));

      await provider.fetchMovieSearch(tQueryTv);

      expect(provider.state, RequestState.Loaded);
      expect(provider.searchResult, tMovieList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      when(mockSearchMovies.execute(tQueryTv))
          .thenAnswer((_) async => const Left(ServerFailure('Server Failure')));

      await provider.fetchMovieSearch(tQueryTv);

      expect(provider.state, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });
}
