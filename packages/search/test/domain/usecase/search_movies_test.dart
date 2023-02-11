import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:search/domain/usecase/search_movies.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late SearchMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = SearchMovies(mockMovieRepository);
  });

  test('should get list of movies from the repository', () async {
    when(mockMovieRepository.searchMovies(tQueryMovie))
        .thenAnswer((_) async => Right(tMovie));

    final result = await usecase.execute(tQueryMovie);
    expect(result, Right(tMovie));
  });
}
