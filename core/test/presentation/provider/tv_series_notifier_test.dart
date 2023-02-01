import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'tv_series_notifier_test.mocks.dart';

@GenerateMocks([TvSeriesUseCase])
void main() {
  late TvSeriesNotifier provider;
  late MockTvSeriesUseCase mockTvSeriesUseCase;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockTvSeriesUseCase = MockTvSeriesUseCase();
    provider = TvSeriesNotifier(
      tvUseCase: mockTvSeriesUseCase,
    )..addListener(() {
        listenerCallCount += 1;
      });
  });

  void arrangeUseCase() {
    when(mockTvSeriesUseCase.getTvDetail(tId))
        .thenAnswer((_) async => const Right(tSeriesDetail));
    when(mockTvSeriesUseCase.getTvRecommendations(tId))
        .thenAnswer((_) async => Right(tSeriesList));
  }

  group('on airing tv', () {
    test('initialState should be Empty', () {
      expect(provider.onAiringState, equals(RequestState.Empty));
    });

    test('should change state to Loading when usecase is called', () {
      when(mockTvSeriesUseCase.getOnAiringTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getOnAiringTv();
      expect(provider.onAiringState, RequestState.Loading);
    });

    test('should get data from the usecase', () async {
      when(mockTvSeriesUseCase.getOnAiringTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getOnAiringTv();
      verify(mockTvSeriesUseCase.getOnAiringTv());
    });

    test('should change onAiring when data is gotten successfully', () async {
      when(mockTvSeriesUseCase.getOnAiringTv())
          .thenAnswer((_) async => Right(tSeriesList));

      await provider.getOnAiringTv();

      expect(provider.onAiringState, RequestState.Loaded);
      expect(provider.onAiring, tSeriesList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      when(mockTvSeriesUseCase.getOnAiringTv())
          .thenAnswer((_) async => const Left(ServerFailure('Server Failure')));

      await provider.getOnAiringTv();

      expect(provider.onAiringState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });

  group('popular tv', () {
    test('initialState should be Empty', () {
      expect(provider.popularState, equals(RequestState.Empty));
    });

    test('should change state to Loading when usecase is called', () {
      when(mockTvSeriesUseCase.getPopularTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getPopularTv();
      expect(provider.popularState, RequestState.Loading);
    });

    test('should get data from the usecase', () async {
      when(mockTvSeriesUseCase.getPopularTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getPopularTv();
      verify(mockTvSeriesUseCase.getPopularTv());
    });

    test('should change popular when data is gotten successfully', () async {
      when(mockTvSeriesUseCase.getPopularTv())
          .thenAnswer((_) async => Right(tSeriesList));

      await provider.getPopularTv();

      expect(provider.popularState, RequestState.Loaded);
      expect(provider.popular, tSeriesList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      when(mockTvSeriesUseCase.getPopularTv())
          .thenAnswer((_) async => const Left(ServerFailure('Server Failure')));

      await provider.getPopularTv();

      expect(provider.popularState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });

  group('top rated tv', () {
    test('initialState should be Empty', () {
      expect(provider.topRatedState, equals(RequestState.Empty));
    });

    test('should change state to Loading when usecase is called', () {
      when(mockTvSeriesUseCase.getTopRatedTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getTopRatedTv();
      expect(provider.topRatedState, RequestState.Loading);
    });

    test('should get data from the usecase', () async {
      when(mockTvSeriesUseCase.getTopRatedTv())
          .thenAnswer((_) async => Right(tSeriesList));

      provider.getTopRatedTv();
      verify(mockTvSeriesUseCase.getTopRatedTv());
    });

    test('should change top rated when data is gotten successfully', () async {
      when(mockTvSeriesUseCase.getTopRatedTv())
          .thenAnswer((_) async => Right(tSeriesList));

      await provider.getTopRatedTv();

      expect(provider.topRatedState, RequestState.Loaded);
      expect(provider.topRated, tSeriesList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      when(mockTvSeriesUseCase.getTopRatedTv())
          .thenAnswer((_) async => const Left(ServerFailure('Server Failure')));

      await provider.getTopRatedTv();

      expect(provider.topRatedState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });

  group('detail tv', () {
    test('initialState should be Empty', () {
      expect(provider.detailState, equals(RequestState.Empty));
    });

    group('get detail data', () {
      test('should get data from the usecase', () async {
        arrangeUseCase();

        await provider.getTvDetail(tId);

        verify(mockTvSeriesUseCase.getTvDetail(tId));
        verify(mockTvSeriesUseCase.getTvRecommendations(tId));
      });

      test('should change state to Loading when usecase is called', () {
        arrangeUseCase();

        provider.getTvDetail(tId);

        expect(provider.detailState, RequestState.Loading);
        expect(listenerCallCount, 1);
      });

      test('should change data detail when data is gotten successfully',
          () async {
        arrangeUseCase();

        await provider.getTvDetail(tId);

        expect(provider.detailState, RequestState.Loaded);
        expect(provider.detail, tSeriesDetail);
        expect(listenerCallCount, 2);
      });

      test('should change recommendation tv when data is gotten successfully',
          () async {
        arrangeUseCase();

        await provider.getTvDetail(tId);

        expect(provider.detailState, RequestState.Loaded);
        expect(provider.recommended, tSeriesList);
      });

      group('watchlist tv', () {
        group('get watchlist data', () {
          test('initialState should be Empty', () {
            expect(provider.watchlistState, equals(RequestState.Empty));
          });

          test('should get data from the usecase', () async {
            when(mockTvSeriesUseCase.getWatchlistTv())
                .thenAnswer((_) async => Right(tSeriesList));

            await provider.getWatchlist();

            verify(mockTvSeriesUseCase.getWatchlistTv());
            expect(provider.watchlist, tSeriesList);
          });
        });

        test('should get the watchlist status', () async {
          when(mockTvSeriesUseCase.isAddedToWatchlist(tId))
              .thenAnswer((_) async => true);

          await provider.loadWatchlistStatus(1);
          expect(provider.isAddedToWatchlist, true);
        });

        test('should execute save watchlist when function called', () async {
          when(mockTvSeriesUseCase.saveWatchlistTv(tSeriesDetail))
              .thenAnswer((_) async => const Right('Success'));
          when(mockTvSeriesUseCase.isAddedToWatchlist(tSeriesDetail.id))
              .thenAnswer((_) async => true);

          await provider.addWatchlist(tSeriesDetail);
          verify(mockTvSeriesUseCase.saveWatchlistTv(tSeriesDetail));
        });

        test('should execute remove watchlist when function called', () async {
          when(mockTvSeriesUseCase.removeWatchlistTv(tSeriesDetail))
              .thenAnswer((_) async => const Right('Removed'));
          when(mockTvSeriesUseCase.isAddedToWatchlist(tSeriesDetail.id))
              .thenAnswer((_) async => false);

          await provider.removeFromWatchlist(tSeriesDetail);
          verify(mockTvSeriesUseCase.removeWatchlistTv(tSeriesDetail));
        });

        test('should update watchlist status when add watchlist success',
            () async {
          when(mockTvSeriesUseCase.saveWatchlistTv(tSeriesDetail))
              .thenAnswer((_) async => const Right('Added to Watchlist'));
          when(mockTvSeriesUseCase.isAddedToWatchlist(tSeriesDetail.id))
              .thenAnswer((_) async => true);

          await provider.addWatchlist(tSeriesDetail);

          verify(mockTvSeriesUseCase.isAddedToWatchlist(tSeriesDetail.id));
          expect(provider.isAddedToWatchlist, true);
          expect(provider.watchlistMessage, 'Added to Watchlist');
          expect(listenerCallCount, 1);
        });

        test('should update watchlist message when add watchlist failed',
            () async {
          when(mockTvSeriesUseCase.saveWatchlistTv(tSeriesDetail))
              .thenAnswer((_) async => const Left(DatabaseFailure('Failed')));
          when(mockTvSeriesUseCase.isAddedToWatchlist(tSeriesDetail.id))
              .thenAnswer((_) async => false);

          await provider.addWatchlist(tSeriesDetail);

          expect(provider.watchlistMessage, 'Failed');
          expect(listenerCallCount, 1);
        });
      });

      group('on error detail data', () {
        test('should return error when data is unsuccessful', () async {
          when(mockTvSeriesUseCase.getTvDetail(tId)).thenAnswer(
              (_) async => const Left(ServerFailure('Server Failure')));
          when(mockTvSeriesUseCase.getTvRecommendations(tId))
              .thenAnswer((_) async => Right(tSeriesList));

          await provider.getTvDetail(tId);

          expect(provider.detailState, RequestState.Error);
          expect(provider.message, 'Server Failure');
          expect(listenerCallCount, 2);
        });
      });
    });

    group('get recommendations data', () {
      test('should get data from the usecase', () async {
        arrangeUseCase();

        await provider.getTvDetail(tId);

        verify(mockTvSeriesUseCase.getTvRecommendations(tId));
        expect(provider.recommended, tSeriesList);
      });

      test(
          'should update recommendation state when data is gotten successfully',
          () async {
        arrangeUseCase();

        await provider.getTvDetail(tId);

        expect(provider.recommendedState, RequestState.Loaded);
        expect(provider.recommended, tSeriesList);
      });

      test('should update error message when request in successful', () async {
        when(mockTvSeriesUseCase.getTvDetail(tId))
            .thenAnswer((_) async => const Right(tSeriesDetail));
        when(mockTvSeriesUseCase.getTvRecommendations(tId))
            .thenAnswer((_) async => const Left(ServerFailure('Failed')));

        await provider.getTvDetail(tId);

        expect(provider.recommendedState, RequestState.Error);
        expect(provider.message, 'Failed');
      });
    });
  });
}
