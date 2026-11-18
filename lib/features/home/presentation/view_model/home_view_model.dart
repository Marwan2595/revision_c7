import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:revision/config/base_response/base_response.dart';
import 'package:revision/features/home/domain/entities/product_entity.dart';
import 'package:revision/features/home/domain/usecases/get_products_usecase.dart';
import 'package:revision/features/home/presentation/view_model/home_event.dart';
import 'package:revision/features/home/presentation/view_model/home_state.dart';

@injectable
class HomeViewModel extends Cubit<HomeState> {
  GetProductsUseCase _getProductsUseCase;
  HomeViewModel(this._getProductsUseCase) : super(HomeState());

  void doEvent(HomeEvent event) {
    switch (event) {
      case GetHomeProductsEvent():
        _getHomeProducts();
      case GetElectronicsProductsEvent():
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  Future<void> _getHomeProducts() async {
    emit(
      state.copyWith(
        homeProductState: state.homeProductState?.copyWith(isLoading: true),
      ),
    );

    BaseResponse<List<ProductEntity>> apiResult = await _getProductsUseCase();

    switch (apiResult) {
      case SuccessBaseResponse<List<ProductEntity>>():
        emit(
          state.copyWith(
            homeProductState: state.homeProductState?.copyWith(
              isLoading: false,
              data: apiResult.data,
            ),
          ),
        );
      case ErrorBaseResponse<List<ProductEntity>>():
        emit(
          state.copyWith(
            homeProductState: state.homeProductState?.copyWith(
              isLoading: false,
              errMsg: apiResult.errMessage,
            ),
          ),
        );
    }
  }
}
