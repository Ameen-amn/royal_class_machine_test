import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:royal_class/core/api.dart';
import 'package:royal_class/data/model/product_model.dart';

abstract class ProdcutRemoteDataSoruce {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProductDetail(String id);
}

@Injectable(as: ProdcutRemoteDataSoruce)
class ProductRemoteDataSourceImpl implements ProdcutRemoteDataSoruce {
  final Box _cacheBox = Hive.box('cacheBox');
  @override
  Future<ProductModel> getProductDetail(String id) async {
    final response = await http.get(Uri.parse('$productApi/$id'));

    if (response.statusCode == 200) {
      return ProductModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product detail');
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await http.get(Uri.parse(productApi));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      final List<ProductModel> productList = jsonResponse.map((product) {
        _cacheBox.put(product['id'], product);
        return ProductModel.fromJson(product);
      }).toList();

      return productList;
    } else {
      throw Exception('Failed to Load products');
    }
  }
}
