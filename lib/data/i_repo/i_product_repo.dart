import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/data/data_source/local_data.dart';
import 'package:royal_class/data/data_source/remote/remote_data.dart';
import 'package:royal_class/domain/entity/product_entity.dart';
import 'package:royal_class/domain/repository/product_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

@Injectable(as: ProductRepository)
class IProductRepo implements ProductRepository {
  final ProdcutRemoteDataSoruce prodcutRemoteDataSoruce;
  final ProdcutLocalDataSoruce prodcutLocalDataSoruce;

  IProductRepo(
      {required this.prodcutRemoteDataSoruce,
      required this.prodcutLocalDataSoruce});
  @override
  Future<Either<Exception, ProductEntity>> getProductDetail(String id) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.first == ConnectivityResult.none) {
      final getItemDetailResponse =
          await prodcutLocalDataSoruce.getProductDetail(id);
      return getItemDetailResponse.fold(
        (l) => left(Exception()),
        (productEntity) => right(productEntity),
      );
      // return left(getItemDetailResponse);
    }
    final remoteRepo = await prodcutRemoteDataSoruce.getProductDetail(id);
   return remoteRepo.fold(
      (l) => left(Exception()),
      (productEntity) => right(productEntity),
    );
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.first == ConnectivityResult.none) {
      return await prodcutLocalDataSoruce.getProducts();
    }
    return await prodcutRemoteDataSoruce.getProducts();
  }
}
