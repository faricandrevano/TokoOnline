import 'package:dio/dio.dart';
import 'package:shamo_mobile/core/core.dart';

abstract class FavoriteApiSource {
  Future<bool> checkProductFavorite(String id);

  Future<bool> actionFavorite(String id);
}

class FavoriteApiSourceImpl implements FavoriteApiSource {
  FavoriteApiSourceImpl(this.dio);

  final Dio dio;

  @override
  Future<bool> checkProductFavorite(String id) async {
    try {
      final response = await dio.get(
        '/favorite/check',
        queryParameters: {'product_id': id},
      );

      return response.data['data'];
    } on DioException catch (e) {
      throw e.toServerException();
    } catch (e) {
      throw ErrorCodeException(message: e.toString());
    }
  }

  @override
  Future<bool> actionFavorite(String id) async {
    try {
      final response = await dio.post('/favorite', data: {'product_id': id});

      return response.data['data'];
    } on DioException catch (e) {
      throw e.toServerException();
    } catch (e) {
      throw ErrorCodeException(message: e.toString());
    }
  }
}
