part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.initial() = _Started;
  const factory ProductEvent.fetchProducts() = _FetchProduts;
  const factory ProductEvent.fetchProductDetail({required int id}) =
      _FetchProdutDetail;
  const factory ProductEvent.lazyLoadProducts() = _LazyProductLoading;
  const factory ProductEvent.addToCart({required ProductEntity? prod}) = _AddtoCart;
}
