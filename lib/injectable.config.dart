// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:royal_class/data/data_source/local_data.dart' as _i5;
import 'package:royal_class/data/data_source/remote/firebase_data.dart' as _i8;
import 'package:royal_class/data/data_source/remote/remote_data.dart' as _i4;
import 'package:royal_class/data/i_repo/i_auth_repo.dart' as _i11;
import 'package:royal_class/data/i_repo/i_product_repo.dart' as _i7;
import 'package:royal_class/domain/repository/auth_repository.dart' as _i10;
import 'package:royal_class/domain/repository/product_repository.dart' as _i6;
import 'package:royal_class/domain/usecase/produt_usecase.dart' as _i12;
import 'package:royal_class/presentation/auth/bloc/auth_bloc.dart' as _i3;
import 'package:royal_class/presentation/core/bloc/product_bloc.dart' as _i13;

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
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
    gh.factory<_i4.ProdcutRemoteDataSoruce>(
        () => _i4.ProductRemoteDataSourceImpl());
    gh.factory<_i5.ProdcutLocalDataSoruce>(
        () => _i5.ProductRemoteDataSourceImpl());
    gh.factory<_i6.ProductRepository>(() => _i7.IProductRepo(
          prodcutRemoteDataSoruce: gh<_i4.ProdcutRemoteDataSoruce>(),
          prodcutLocalDataSoruce: gh<_i5.ProdcutLocalDataSoruce>(),
        ));
    gh.factory<_i8.AuthRemoteDataSource>(() =>
        _i8.AuthRemoteDataSourceImpl(firebaseAuth: gh<_i9.FirebaseAuth>()));
    gh.factory<_i10.AuthRepository>(() => _i11.AuthRepositoryImpl(
        remoteDataSource: gh<_i8.AuthRemoteDataSource>()));
    gh.factory<_i12.Usecase>(() => _i12.Usecase(
          productRepository: gh<_i6.ProductRepository>(),
          authRepository: gh<_i10.AuthRepository>(),
        ));
    gh.factory<_i13.ProductBloc>(
        () => _i13.ProductBloc(produtUsecase: gh<_i12.Usecase>()));
    return this;
  }
}
