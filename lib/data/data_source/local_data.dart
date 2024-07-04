import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/data/model/product_model.dart';

abstract class ProdcutLocalDataSoruce {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProductDetail(String id);
}

@Injectable(as: ProdcutLocalDataSoruce)
class ProductRemoteDataSourceImpl implements ProdcutLocalDataSoruce {
  final Box _cacheBox = Hive.box('cacheBox');
  @override
  Future<ProductModel> getProductDetail(String id) async {
    if (_cacheBox.isNotEmpty) {
      final ProductModel product = _cacheBox.get(id);

      return product;
    } else {
      throw Exception('Failed to load product detail');
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    if (_cacheBox.isNotEmpty) {
      List<ProductModel> productList = [];
      for (var element in _cacheBox.keys) {
        productList.add(element);
      }

      return productList;
    } else {
      throw Exception('Failed to Load products');
    }
  }
}
