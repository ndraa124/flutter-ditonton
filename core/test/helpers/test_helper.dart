import 'package:core/core.dart';
import 'package:http/io_client.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  MovieRepository,
  TvRepository,
  MovieRemoteDataSource,
  TvRemoteDataSource,
  MovieLocalDataSource,
  TvLocalDataSource,
  DatabaseHelper,
  NetworkInfo
], customMocks: [
  MockSpec<IOClient>(as: #MockIOClient)
])
void main() {}
