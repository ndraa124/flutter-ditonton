import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:search/search.dart';

part 'search_tv_event.dart';
part 'search_tv_state.dart';

class SearchTvBloc extends Bloc<SearchTvEvent, SearchTvState> {
  final SearchTv _searchTv;

  SearchTvBloc(this._searchTv) : super(SearchTvEmpty()) {
    on<OnQueryTvChanged>((event, emit) async {
      final query = event.query;

      emit(SearchTvLoading());
      final result = await _searchTv.execute(query);

      result.fold(
        (failure) {
          emit(SearchTvError(failure.message));
        },
        (data) {
          emit(SearchTvHasData(data));
        },
      );
    }, transformer: debounce(const Duration(milliseconds: 500)));
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
