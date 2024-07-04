part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoaded,
    List<ProductEntity>? product,
  }) = _ProductState;
  factory ProductState.initial() => const ProductState();
}
