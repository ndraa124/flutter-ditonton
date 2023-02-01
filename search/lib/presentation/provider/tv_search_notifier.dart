import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:search/search.dart';

class TvSearchNotifier extends ChangeNotifier {
  final SearchTv useCase;

  TvSearchNotifier({
    required this.useCase,
  });

  var _search = <TvSeries>[];
  List<TvSeries> get search => _search;

  RequestState _searchState = RequestState.Empty;
  RequestState get searchState => _searchState;

  String _message = '';
  String get message => _message;

  Future<void> fetchTvSearch(String query) async {
    _searchState = RequestState.Loading;
    notifyListeners();

    final res = await useCase.execute(query);

    res.fold(
      (fail) {
        _searchState = RequestState.Error;
        _message = fail.message;
        notifyListeners();
      },
      (data) {
        _searchState = RequestState.Loaded;
        _search = data;
        notifyListeners();
      },
    );
  }
}
