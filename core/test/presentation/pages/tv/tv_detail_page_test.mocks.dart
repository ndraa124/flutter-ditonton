// Mocks generated by Mockito 5.3.2 from annotations
// in core/test/presentation/pages/tv/tv_detail_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:ui' as _i4;

import 'package:core/core.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTvSeriesUseCase_0 extends _i1.SmartFake
    implements _i2.TvSeriesUseCase {
  _FakeTvSeriesUseCase_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTvSeriesDetail_1 extends _i1.SmartFake
    implements _i2.TvSeriesDetail {
  _FakeTvSeriesDetail_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TvSeriesNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesNotifier extends _i1.Mock implements _i2.TvSeriesNotifier {
  MockTvSeriesNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesUseCase get tvUseCase => (super.noSuchMethod(
        Invocation.getter(#tvUseCase),
        returnValue: _FakeTvSeriesUseCase_0(
          this,
          Invocation.getter(#tvUseCase),
        ),
      ) as _i2.TvSeriesUseCase);
  @override
  List<_i2.TvSeries> get onAiring => (super.noSuchMethod(
        Invocation.getter(#onAiring),
        returnValue: <_i2.TvSeries>[],
      ) as List<_i2.TvSeries>);
  @override
  List<_i2.TvSeries> get popular => (super.noSuchMethod(
        Invocation.getter(#popular),
        returnValue: <_i2.TvSeries>[],
      ) as List<_i2.TvSeries>);
  @override
  List<_i2.TvSeries> get topRated => (super.noSuchMethod(
        Invocation.getter(#topRated),
        returnValue: <_i2.TvSeries>[],
      ) as List<_i2.TvSeries>);
  @override
  List<_i2.TvSeries> get recommended => (super.noSuchMethod(
        Invocation.getter(#recommended),
        returnValue: <_i2.TvSeries>[],
      ) as List<_i2.TvSeries>);
  @override
  _i2.TvSeriesDetail get detail => (super.noSuchMethod(
        Invocation.getter(#detail),
        returnValue: _FakeTvSeriesDetail_1(
          this,
          Invocation.getter(#detail),
        ),
      ) as _i2.TvSeriesDetail);
  @override
  List<_i2.TvSeries> get watchlist => (super.noSuchMethod(
        Invocation.getter(#watchlist),
        returnValue: <_i2.TvSeries>[],
      ) as List<_i2.TvSeries>);
  @override
  bool get isAddedToWatchlist => (super.noSuchMethod(
        Invocation.getter(#isAddedToWatchlist),
        returnValue: false,
      ) as bool);
  @override
  _i2.RequestState get onAiringState => (super.noSuchMethod(
        Invocation.getter(#onAiringState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  _i2.RequestState get popularState => (super.noSuchMethod(
        Invocation.getter(#popularState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  _i2.RequestState get topRatedState => (super.noSuchMethod(
        Invocation.getter(#topRatedState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  _i2.RequestState get detailState => (super.noSuchMethod(
        Invocation.getter(#detailState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  _i2.RequestState get recommendedState => (super.noSuchMethod(
        Invocation.getter(#recommendedState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  _i2.RequestState get watchlistState => (super.noSuchMethod(
        Invocation.getter(#watchlistState),
        returnValue: _i2.RequestState.Empty,
      ) as _i2.RequestState);
  @override
  String get message => (super.noSuchMethod(
        Invocation.getter(#message),
        returnValue: '',
      ) as String);
  @override
  String get watchlistMessage => (super.noSuchMethod(
        Invocation.getter(#watchlistMessage),
        returnValue: '',
      ) as String);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  _i3.Future<void> getOnAiringTv() => (super.noSuchMethod(
        Invocation.method(
          #getOnAiringTv,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> getPopularTv() => (super.noSuchMethod(
        Invocation.method(
          #getPopularTv,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> getTopRatedTv() => (super.noSuchMethod(
        Invocation.method(
          #getTopRatedTv,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> getTvDetail(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTvDetail,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> getWatchlist() => (super.noSuchMethod(
        Invocation.method(
          #getWatchlist,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> getWatchlistById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getWatchlistById,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> addWatchlist(_i2.TvSeriesDetail? tv) => (super.noSuchMethod(
        Invocation.method(
          #addWatchlist,
          [tv],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> removeFromWatchlist(_i2.TvSeriesDetail? tv) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeFromWatchlist,
          [tv],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> loadWatchlistStatus(int? id) => (super.noSuchMethod(
        Invocation.method(
          #loadWatchlistStatus,
          [id],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  void addListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}