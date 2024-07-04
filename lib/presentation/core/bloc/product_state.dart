part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoaded,
    @Default(false) bool hasReachedMax,
    @Default(false) bool loadMore,
    List<ProductEntity>? productList,
    List<ProductEntity>? cartList,
    ProductEntity? selectedProduct
  }) = _ProductState;
  factory ProductState.initial() => const ProductState();
}
