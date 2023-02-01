import 'domain/usecase/search_movies_test.dart'as search_movie;
import 'domain/usecase/search_tv_test.dart' as search_tv;
import 'presentation/bloc/movie/search_movie_bloc_test.dart' as search_movie_bloc;
import 'presentation/bloc/tvseries/search_tv_bloc_test.dart' as search_tv_bloc;
import 'presentation/provider/movie_search_notifier_test.dart' as movie_search_notifier;
import 'presentation/provider/tv_search_notifier_test.dart' as tv_search_notifier;

void main() {
  // usecase
  search_movie.main();
  search_tv.main();

  // presentation
  search_movie_bloc.main();
  search_tv_bloc.main();
  movie_search_notifier.main();
  tv_search_notifier.main();
}