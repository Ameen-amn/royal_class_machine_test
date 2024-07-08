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
  Future<ProductEntity> getProductDetail(String id) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.first == ConnectivityResult.none) {
      return await prodcutLocalDataSoruce.getProductDetail(id);
    }
    return await prodcutRemoteDataSoruce.getProductDetail(id);
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
