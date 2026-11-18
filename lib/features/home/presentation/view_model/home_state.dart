import 'package:revision/config/base_state/base_state.dart';
import 'package:revision/features/home/domain/entities/product_entity.dart';

class HomeState {
  BaseState<List<ProductEntity>>? electronicsState;
  BaseState<List<ProductEntity>>? homeProductState;

  HomeState({this.electronicsState, this.homeProductState}) {
    electronicsState =
        electronicsState ??
        BaseState<List<ProductEntity>>(isLoading: true, errMsg: null, data: []);
    homeProductState =
        homeProductState ??
        BaseState<List<ProductEntity>>(isLoading: true, errMsg: null, data: []);
  }

  HomeState copyWith({
    BaseState<List<ProductEntity>>? electronicsState,
    BaseState<List<ProductEntity>>? homeProductState,
  }) {
    return HomeState(
      electronicsState: electronicsState ?? this.electronicsState,
      homeProductState: homeProductState ?? this.homeProductState,
    );
  }
}
