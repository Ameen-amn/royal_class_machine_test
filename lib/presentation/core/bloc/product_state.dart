part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  
  const factory ProductState() = _ProductState;
  factory ProductState.initial()=>ProductState();
}
