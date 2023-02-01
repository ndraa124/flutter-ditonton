import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

class TvSeriesNotifier extends ChangeNotifier {
  final TvSeriesUseCase tvUseCase;

  TvSeriesNotifier({
    required this.tvUseCase,
  });

  var _onAiring = <TvSeries>[];
  List<TvSeries> get onAiring => _onAiring;

  var _popular = <TvSeries>[];
  List<TvSeries> get popular => _popular;

  var _topRated = <TvSeries>[];
  List<TvSeries> get topRated => _topRated;

  var _recommended = <TvSeries>[];
  List<TvSeries> get recommended => _recommended;

  late TvSeriesDetail _detail;
  TvSeriesDetail get detail => _detail;

  var _watchlist = <TvSeries>[];
  List<TvSeries> get watchlist => _watchlist;

  bool _isAddedToWatchlist = false;
  bool get isAddedToWatchlist => _isAddedToWatchlist;

  RequestState _onAiringState = RequestState.Empty;
  RequestState get onAiringState => _onAiringState;

  RequestState _popularState = RequestState.Empty;
  RequestState get popularState => _popularState;

  RequestState _topRatedState = RequestState.Empty;
  RequestState get topRatedState => _topRatedState;

  RequestState _detailState = RequestState.Empty;
  RequestState get detailState => _detailState;

  RequestState _recommendedState = RequestState.Empty;
  RequestState get recommendedState => _recommendedState;

  RequestState _watchlistState = RequestState.Empty;
  RequestState get watchlistState => _watchlistState;

  String _message = '';
  String get message => _message;

  String _watchlistMessage = '';
  String get watchlistMessage => _watchlistMessage;

  Future<void> getOnAiringTv() async {
    _onAiringState = RequestState.Loading;
    notifyListeners();

    final res = await tvUseCase.getOnAiringTv();

    res.fold(
      (fail) {
        _onAiringState = RequestState.Error;
        _message = fail.message;
        notifyListeners();
      },
      (data) {
        _onAiringState = RequestState.Loaded;
        _onAiring = data;
        notifyListeners();
      },
    );
  }

  Future<void> getPopularTv() async {
    _popularState = RequestState.Loading;
    notifyListeners();

    final res = await tvUseCase.getPopularTv();

    res.fold(
      (fail) {
        _popularState = RequestState.Error;
        _message = fail.message;
        notifyListeners();
      },
      (data) {
        _popularState = RequestState.Loaded;
        _popular = data;
        notifyListeners();
      },
    );
  }

  Future<void> getTopRatedTv() async {
    _topRatedState = RequestState.Loading;
    notifyListeners();

    final res = await tvUseCase.getTopRatedTv();

    res.fold(
      (fail) {
        _topRatedState = RequestState.Error;
        _message = fail.message;
        notifyListeners();
      },
      (data) {
        _topRatedState = RequestState.Loaded;
        _topRated = data;
        notifyListeners();
      },
    );
  }

  Future<void> getTvDetail(int id) async {
    _detailState = RequestState.Loading;
    notifyListeners();

    final resDetail = await tvUseCase.getTvDetail(id);
    final resRecommended = await tvUseCase.getTvRecommendations(id);

    resDetail.fold(
      (fail) {
        _detailState = RequestState.Error;
        _message = fail.message;
        notifyListeners();
      },
      (dataDetail) {
        _recommendedState = RequestState.Loading;
        _detail = dataDetail;

        resRecommended.fold(
          (fail) {
            _recommendedState = RequestState.Error;
            _message = fail.message;
          },
          (dataRecommended) {
            _recommendedState = RequestState.Loaded;
            _recommended = dataRecommended;
          },
        );

        _detailState = RequestState.Loaded;
        notifyListeners();
      },
    );
  }

  Future<void> getWatchlist() async {
    _watchlistState = RequestState.Loading;
    notifyListeners();

    final res = await tvUseCase.getWatchlistTv();

    res.fold(
      (fail) {
        _watchlistState = RequestState.Error;
        _watchlistMessage = fail.message;
        notifyListeners();
      },
      (data) {
        _watchlistState = RequestState.Loaded;
        _watchlist = data;
        notifyListeners();
      },
    );
  }

  Future<void> getWatchlistById(int id) async {
    _watchlistState = RequestState.Loading;
    notifyListeners();

    final res = await tvUseCase.getWatchlistTv();

    res.fold(
      (fail) {
        _watchlistState = RequestState.Error;
        _watchlistMessage = fail.message;
        notifyListeners();
      },
      (data) {
        _watchlistState = RequestState.Loaded;
        _watchlist = data;
        notifyListeners();
      },
    );
  }

  Future<void> addWatchlist(TvSeriesDetail tv) async {
    final result = await tvUseCase.saveWatchlistTv(tv);

    await result.fold(
      (fail) async {
        _watchlistMessage = fail.message;
      },
      (success) async {
        _watchlistMessage = success;
      },
    );

    await loadWatchlistStatus(tv.id);
  }

  Future<void> removeFromWatchlist(TvSeriesDetail tv) async {
    final result = await tvUseCase.removeWatchlistTv(tv);

    await result.fold(
      (fail) async {
        _watchlistMessage = fail.message;
      },
      (success) async {
        _watchlistMessage = success;
      },
    );

    await loadWatchlistStatus(tv.id);
  }

  Future<void> loadWatchlistStatus(int id) async {
    final result = await tvUseCase.isAddedToWatchlist(id);
    _isAddedToWatchlist = result;
    notifyListeners();
  }
}
