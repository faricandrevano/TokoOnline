import 'package:dartz/dartz.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/favorite/favorite.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  FavoriteRepositoryImpl(this.favoriteApiSource);

  final FavoriteApiSource favoriteApiSource;

  @override
  Future<Either<Failure, bool>> checkProductFavorite(String id) async {
    try {
      final result = await favoriteApiSource.checkProductFavorite(id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }

  @override
  Future<Either<Failure, bool>> actionFavorite(String id) async {
    try {
      final result = await favoriteApiSource.actionFavorite(id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message, code: e.code));
    }
  }
}
