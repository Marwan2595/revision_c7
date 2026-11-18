import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:revision/core/constant/app_endpoints.dart';
import 'package:revision/features/home/data/models/products_response.dart';

part 'home_api_client.g.dart';

@lazySingleton
@RestApi()
abstract class HomeApiClient {
  @factoryMethod
  factory HomeApiClient(Dio dio) = _HomeApiClient;

  @GET(AppEndpoints.productsEndpoint)
  Future<ProductsResponse> getHomeProducts();
}
