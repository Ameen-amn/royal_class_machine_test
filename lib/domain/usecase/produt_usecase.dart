import 'package:injectable/injectable.dart';
import 'package:royal_class/domain/entity/product_entity.dart';
import 'package:royal_class/domain/repository/product_repository.dart';

@Injectable()
class ProdutUsecase {
  final ProductRepository productRepository;

  ProdutUsecase({required this.productRepository});

  Future<List<ProductEntity>> getAllProduct() async {
    return productRepository.getProducts(5);
  }

  Future<ProductEntity> getProductDetail({required int id}) async {
    return await productRepository.getProductDetail(id.toString());
  }
}
