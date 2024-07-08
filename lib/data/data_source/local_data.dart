import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/data/model/product_model.dart';

abstract class ProdcutLocalDataSoruce {
  Future<List<ProductModel>> getProducts();
  Future<Either<Exception, ProductModel>> getProductDetail(String id);
}

@Injectable(as: ProdcutLocalDataSoruce)
class ProductRemoteDataSourceImpl implements ProdcutLocalDataSoruce {
  final Box _cacheBox = Hive.box('cacheBox');
  @override
  Future<Either<Exception, ProductModel>> getProductDetail(String id) async {
    try {
      if (_cacheBox.isNotEmpty) {
        final ProductModel product = ProductModel.fromJson(_cacheBox.get(id));

        return right(product);
      }
      return left(Exception());
    } catch (e) {
      return left(Exception('get product detail failed'));
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    if (_cacheBox.isNotEmpty) {
      List<ProductModel> productList = [];

      for (var element in _cacheBox.keys) {
        productList.add(ProductModel.fromJson(_cacheBox.get(element)));
      }

      return productList;
    } else {
      throw Exception('Failed to Load products');
    }
  }
}
