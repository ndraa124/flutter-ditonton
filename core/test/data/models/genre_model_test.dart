import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tGenreModel = GenreModel(
    id: 1,
    name: "Name",
  );

  const tGenre = Genre(
    id: 1,
    name: "Name",
  );

  test('should be a subclass of genre entity', () async {
    final result = tGenreModel.toEntity();
    expect(result, tGenre);
  });
}
