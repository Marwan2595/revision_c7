// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/api/api_client/home_api_client.dart' as _i592;
import '../../features/home/api/datasources/home_reote_data_source_impl.dart'
    as _i390;
import '../../features/home/data/datasources/remote/home_remote_datasource.dart'
    as _i410;
import '../../features/home/data/repo/home_repo_impl.dart' as _i1024;
import '../../features/home/domain/repo/home_repo.dart' as _i280;
import '../../features/home/domain/usecases/get_products_usecase.dart' as _i677;
import '../../features/home/presentation/view_model/home_view_model.dart'
    as _i77;
import '../dio/dio_module.dart' as _i977;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.singleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i592.HomeApiClient>(
      () => _i592.HomeApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i410.HomeRemoteDataSource>(
      () => _i390.HomeRemoteDataSourceImpl(gh<_i592.HomeApiClient>()),
    );
    gh.lazySingleton<_i280.HomeRepo>(
      () => _i1024.HomeRepoImpl(gh<_i410.HomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i677.GetProductsUseCase>(
      () => _i677.GetProductsUseCase(gh<_i280.HomeRepo>()),
    );
    gh.factory<_i77.HomeViewModel>(
      () => _i77.HomeViewModel(gh<_i677.GetProductsUseCase>()),
    );
    return this;
  }
}

class _$DioModule extends _i977.DioModule {}
