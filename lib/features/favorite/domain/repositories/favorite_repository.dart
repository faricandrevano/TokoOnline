import 'package:dartz/dartz.dart';
import 'package:shamo_mobile/core/core.dart';

abstract class FavoriteRepository {
  Future<Either<Failure, bool>> checkProductFavorite(String id);

  Future<Either<Failure, bool>> actionFavorite(String id);
}
