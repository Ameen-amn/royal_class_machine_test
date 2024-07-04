// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:royal_class/data/data_source/local_data.dart' as _i3;
import 'package:royal_class/data/data_source/remote_data.dart' as _i4;
import 'package:royal_class/data/i_repo/i_product_repo.dart' as _i6;
import 'package:royal_class/domain/repository/product_repository.dart' as _i5;
import 'package:royal_class/domain/usecase/produt_usecase.dart' as _i7;
import 'package:royal_class/presentation/core/bloc/product_bloc.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProdcutLocalDataSoruce>(
        () => _i3.ProductRemoteDataSourceImpl());
    gh.factory<_i4.ProdcutRemoteDataSoruce>(
        () => _i4.ProductRemoteDataSourceImpl());
    gh.factory<_i5.ProductRepository>(() => _i6.IProductRepo(
          prodcutRemoteDataSoruce: gh<_i4.ProdcutRemoteDataSoruce>(),
          prodcutLocalDataSoruce: gh<_i3.ProdcutLocalDataSoruce>(),
        ));
    gh.factory<_i7.ProdutUsecase>(() =>
        _i7.ProdutUsecase(productRepository: gh<_i5.ProductRepository>()));
    gh.factory<_i8.ProductBloc>(
        () => _i8.ProductBloc(produtUsecase: gh<_i7.ProdutUsecase>()));
    return this;
  }
}
