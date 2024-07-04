import 'package:injectable/injectable.dart';
import 'package:royal_class/data/data_source/remote_data.dart';
import 'package:royal_class/domain/entity/product_entity.dart';
import 'package:royal_class/domain/repository/product_repository.dart';

@Injectable(as: ProductRepository)
class IProductRepo implements ProductRepository {
  final ProdcutRemoteDataSoruce prodcutRemoteDataSoruce;

  IProductRepo({required this.prodcutRemoteDataSoruce});
  @override
  Future<ProductEntity> getProductDetail(String id) async {
    return await prodcutRemoteDataSoruce.getProductDetail(id);
  }

  @override
  Future<List<ProductEntity>> getProducts(int page) async {
    return await prodcutRemoteDataSoruce.getProducts(5);
  }
}
