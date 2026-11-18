import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/domain/entities/product_entity.dart';
import 'package:revision/features/home/domain/repo/home_repo.dart';

class GetProductsUseCase {
  HomeRepo homeRepo;
  GetProductsUseCase(this.homeRepo);

  Future<BaseResponse<List<ProductEntity>>> call() async {
    return await homeRepo.getProducts();
  }
}
