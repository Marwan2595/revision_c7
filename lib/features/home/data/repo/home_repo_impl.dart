import 'package:injectable/injectable.dart';
import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:revision/features/home/data/models/products_response.dart';
import 'package:revision/features/home/domain/entities/product_entity.dart';
import 'package:revision/features/home/domain/repo/home_repo.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImpl(this.homeRemoteDataSource);

  @override
  Future<BaseResponse<List<ProductEntity>>> getProducts() async {
    BaseResponse<List<ProductDto>> apiResponse = await homeRemoteDataSource
        .getProducts();

    switch (apiResponse) {
      case SuccessBaseResponse<List<ProductDto>>():
        List<ProductEntity> productsList = apiResponse.data
            .map((dto) => dto.toEntity())
            .toList();

        return SuccessBaseResponse<List<ProductEntity>>(data: productsList);
        
      case ErrorBaseResponse<List<ProductDto>>():
        return ErrorBaseResponse<List<ProductEntity>>.fromErrorMsg(
          apiResponse.errMessage,
        );
    }
  }
}
