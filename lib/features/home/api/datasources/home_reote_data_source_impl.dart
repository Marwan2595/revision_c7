import 'package:injectable/injectable.dart';
import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/api/api_client/home_api_client.dart';
import 'package:revision/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:revision/features/home/data/models/products_response.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeApiClient apiClient;

  HomeRemoteDataSourceImpl(this.apiClient);

  @override
  Future<BaseResponse<List<ProductDto>>> getProducts() async {
    try {
      ProductsResponse productsResponse = await apiClient.getHomeProducts();
      List<ProductDto> productDtoList = productsResponse.productList ?? [];
      return SuccessBaseResponse<List<ProductDto>>(data: productDtoList);
    } catch (e) {
      return ErrorBaseResponse<List<ProductDto>>(errorObj: e);
    }
  }
}
