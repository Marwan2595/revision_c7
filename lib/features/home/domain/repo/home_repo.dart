import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<BaseResponse<List<ProductEntity>>> getProducts();
}
