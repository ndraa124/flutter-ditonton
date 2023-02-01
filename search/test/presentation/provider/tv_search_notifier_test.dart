import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:search/domain/usecase/search_tv.dart';
import 'package:search/presentation/provider/tv_search_notifier.dart';

import '../../dummy_data/dummy_objects.dart';
import 'tv_search_notifier_test.mocks.dart';

@GenerateMocks([SearchTv])
void main() {
  late TvSearchNotifier provider;
  late MockSearchTv mockSearch;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockSearch = MockSearchTv();
    provider = TvSearchNotifier(
      useCase: mockSearch,
    )..addListener(() {
        listenerCallCount += 1;
      });
  });

  group('search tv', () {
    test('initialState should be Empty', () {
      expect(provider.searchState, equals(RequestState.Empty));
    });

    test('should change state to Loading when usecase is called', () {
      when(mockSearch.execute(tQueryTv))
          .thenAnswer((_) async => Right(tSeries));

      provider.fetchTvSearch(tQueryTv);
      expect(provider.searchState, RequestState.Loading);
    });

    test('should get data from the usecase', () async {
      when(mockSearch.execute(tQueryTv))
          .thenAnswer((_) async => Right(tSeries));

      provider.fetchTvSearch(tQueryTv);
      verify(mockSearch.execute(tQueryTv));
    });

    test('should change search when data is gotten successfully', () async {
      when(mockSearch.execute(tQueryTv))
          .thenAnswer((_) async => Right(tSeries));

      await provider.fetchTvSearch(tQueryTv);

      expect(provider.searchState, RequestState.Loaded);
      expect(provider.search, tSeries);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      when(mockSearch.execute(tQueryTv))
          .thenAnswer((_) async => const Left(ServerFailure('Server Failure')));

      await provider.fetchTvSearch(tQueryTv);

      expect(provider.searchState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });
}
