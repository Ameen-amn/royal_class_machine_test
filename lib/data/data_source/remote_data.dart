import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:royal_class/core/api.dart';
import 'package:royal_class/data/model/product_model.dart';

abstract class ProdcutRemoteDataSoruce {
  Future<List<ProductModel>> getProducts(int page);
  Future<ProductModel> getProductDetail(String id);
}

class ProductRemoteDataSourceImpl implements ProdcutRemoteDataSoruce {
  late http.Client client;
  @override
  Future<ProductModel> getProductDetail(String id) async {
    final response = await client.get(Uri.parse('$productApi/$id'));

    if (response.statusCode == 200) {
      return ProductModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product detail');
    }
  }

  @override
  Future<List<ProductModel>> getProducts(int page) async {
    final respnse = await client.get(Uri.parse(productApi));
    if (respnse.statusCode == 200) {
      List jsonResponse = json.decode(respnse.body);
      return jsonResponse
          .map((product) => ProductModel.fromJson(product))
          .toList();
    } else {
      throw Exception('Failed to Load products');
    }
  }
}
