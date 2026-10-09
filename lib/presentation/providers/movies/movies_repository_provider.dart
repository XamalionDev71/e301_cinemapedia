import 'package:e301_cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:e301_cinemapedia/infrastructure/respositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
