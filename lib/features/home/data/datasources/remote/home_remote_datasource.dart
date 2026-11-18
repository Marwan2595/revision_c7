import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/data/models/products_response.dart';

abstract class HomeRemoteDataSource {
  Future<BaseResponse<List<ProductDto>>> getProducts();
}
