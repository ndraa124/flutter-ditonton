import './data/datasources/movie_local_data_source_test.dart' as movie_local;
import './data/datasources/movie_remote_data_source_test.dart' as movie_remote;
import './data/datasources/tv_local_data_source_test.dart' as tv_local;
import './data/datasources/tv_remote_data_source_test.dart' as tv_remote;
import './data/models/genre_model_test.dart' as genre_model;
import './data/models/movie_model_test.dart' as movie_model;
import './data/models/movie_response_model_test.dart' as movie_response;
import './data/models/season_model_test.dart' as season_model;
import './data/models/tv_model_test.dart' as tv_model;
import './data/models/tv_response_model_test.dart' as tv_response;
import './data/repositories/movie_repository_impl_test.dart' as movie_repo;
import './data/repositories/tv_repository_impl_test.dart' as tv_repo;
import './domain/usecases/get_movie_detail_test.dart' as get_movie_detail;
import './domain/usecases/get_movie_recommendations_test.dart' as get_movie_recommended;
import './domain/usecases/get_now_playing_movies_test.dart' as get_now_playing_movie;
import './domain/usecases/get_popular_movies_test.dart' as get_popular_movie;
import './domain/usecases/get_top_rated_movies_test.dart' as get_top_rated;
import './domain/usecases/get_watchlist_movies_test.dart' as get_watchlist_movies;
import './domain/usecases/get_watchlist_status_test.dart' as get_watchlist_status;
import './domain/usecases/remove_watchlist_test.dart' as remove_watchlist;
import './domain/usecases/save_watchlist_test.dart' as save_watchlist;
import './domain/usecases/tv_series_test.dart' as tv_series;
import './presentation/pages/movie_detail_page_test.dart' as movie_detail_page;
import './presentation/pages/popular_movies_page_test.dart' as popular_movie_page;
import './presentation/pages/top_rated_movies_page_test.dart' as top_rated_movie;
import './presentation/provider/movie_detail_notifier_test.dart' as movie_detail_notifier;
import './presentation/provider/movie_list_notifier_test.dart' as movie_list_notifier;
import './presentation/provider/popular_movies_notifier_test.dart' as popular_movies_notifier;
import './presentation/provider/top_rated_movies_notifier_test.dart' as top_rated_movies_notifier;
import './presentation/provider/tv_series_notifier_test.dart' as tv_series_notifier;
import './presentation/provider/watchlist_movie_notifier_test.dart' as watchlist_movies_notifier;
import './style/text_style.dart' as text_style;

void main() {
  // datasource
  movie_local.main();
  movie_remote.main();
  tv_local.main();
  tv_remote.main();

  //models
  genre_model.main();
  movie_model.main();
  movie_response.main();
  season_model.main();
  tv_model.main();
  tv_response.main();

  // repositories
  movie_repo.main();
  tv_repo.main();

  // usecase
  get_movie_detail.main();
  get_movie_recommended.main();
  get_now_playing_movie.main();
  get_popular_movie.main();
  get_top_rated.main();
  get_watchlist_movies.main();
  get_watchlist_status.main();
  remove_watchlist.main();
  save_watchlist.main();
  tv_series.main();

  // presentation
  movie_detail_page.main();
  popular_movie_page.main();
  top_rated_movie.main();
  movie_detail_notifier.main();
  movie_list_notifier.main();
  popular_movies_notifier.main();
  top_rated_movies_notifier.main();
  tv_series_notifier.main();
  watchlist_movies_notifier.main();

  // style
  text_style.main();
}
