// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchProdutsImplCopyWith<$Res> {
  factory _$$FetchProdutsImplCopyWith(
          _$FetchProdutsImpl value, $Res Function(_$FetchProdutsImpl) then) =
      __$$FetchProdutsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProdutsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProdutsImpl>
    implements _$$FetchProdutsImplCopyWith<$Res> {
  __$$FetchProdutsImplCopyWithImpl(
      _$FetchProdutsImpl _value, $Res Function(_$FetchProdutsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProdutsImpl implements _FetchProduts {
  const _$FetchProdutsImpl();

  @override
  String toString() {
    return 'ProductEvent.fetchProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProdutsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) {
    return fetchProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) {
    return fetchProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchProduts implements ProductEvent {
  const factory _FetchProduts() = _$FetchProdutsImpl;
}

/// @nodoc
abstract class _$$FetchProdutDetailImplCopyWith<$Res> {
  factory _$$FetchProdutDetailImplCopyWith(_$FetchProdutDetailImpl value,
          $Res Function(_$FetchProdutDetailImpl) then) =
      __$$FetchProdutDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchProdutDetailImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProdutDetailImpl>
    implements _$$FetchProdutDetailImplCopyWith<$Res> {
  __$$FetchProdutDetailImplCopyWithImpl(_$FetchProdutDetailImpl _value,
      $Res Function(_$FetchProdutDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchProdutDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchProdutDetailImpl implements _FetchProdutDetail {
  const _$FetchProdutDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.fetchProductDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProdutDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProdutDetailImplCopyWith<_$FetchProdutDetailImpl> get copyWith =>
      __$$FetchProdutDetailImplCopyWithImpl<_$FetchProdutDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) {
    return fetchProductDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) {
    return fetchProductDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchProductDetail != null) {
      return fetchProductDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) {
    return fetchProductDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) {
    return fetchProductDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchProductDetail != null) {
      return fetchProductDetail(this);
    }
    return orElse();
  }
}

abstract class _FetchProdutDetail implements ProductEvent {
  const factory _FetchProdutDetail({required final int id}) =
      _$FetchProdutDetailImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchProdutDetailImplCopyWith<_$FetchProdutDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LazyProductLoadingImplCopyWith<$Res> {
  factory _$$LazyProductLoadingImplCopyWith(_$LazyProductLoadingImpl value,
          $Res Function(_$LazyProductLoadingImpl) then) =
      __$$LazyProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LazyProductLoadingImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LazyProductLoadingImpl>
    implements _$$LazyProductLoadingImplCopyWith<$Res> {
  __$$LazyProductLoadingImplCopyWithImpl(_$LazyProductLoadingImpl _value,
      $Res Function(_$LazyProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LazyProductLoadingImpl implements _LazyProductLoading {
  const _$LazyProductLoadingImpl();

  @override
  String toString() {
    return 'ProductEvent.lazyLoadProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LazyProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) {
    return lazyLoadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) {
    return lazyLoadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) {
    if (lazyLoadProducts != null) {
      return lazyLoadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) {
    return lazyLoadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) {
    return lazyLoadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (lazyLoadProducts != null) {
      return lazyLoadProducts(this);
    }
    return orElse();
  }
}

abstract class _LazyProductLoading implements ProductEvent {
  const factory _LazyProductLoading() = _$LazyProductLoadingImpl;
}

/// @nodoc
abstract class _$$AddtoCartImplCopyWith<$Res> {
  factory _$$AddtoCartImplCopyWith(
          _$AddtoCartImpl value, $Res Function(_$AddtoCartImpl) then) =
      __$$AddtoCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity? prod});
}

/// @nodoc
class __$$AddtoCartImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddtoCartImpl>
    implements _$$AddtoCartImplCopyWith<$Res> {
  __$$AddtoCartImplCopyWithImpl(
      _$AddtoCartImpl _value, $Res Function(_$AddtoCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod = freezed,
  }) {
    return _then(_$AddtoCartImpl(
      prod: freezed == prod
          ? _value.prod
          : prod // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc

class _$AddtoCartImpl implements _AddtoCart {
  const _$AddtoCartImpl({required this.prod});

  @override
  final ProductEntity? prod;

  @override
  String toString() {
    return 'ProductEvent.addToCart(prod: $prod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddtoCartImpl &&
            (identical(other.prod, prod) || other.prod == prod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddtoCartImplCopyWith<_$AddtoCartImpl> get copyWith =>
      __$$AddtoCartImplCopyWithImpl<_$AddtoCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchProducts,
    required TResult Function(int id) fetchProductDetail,
    required TResult Function() lazyLoadProducts,
    required TResult Function(ProductEntity? prod) addToCart,
  }) {
    return addToCart(prod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchProducts,
    TResult? Function(int id)? fetchProductDetail,
    TResult? Function()? lazyLoadProducts,
    TResult? Function(ProductEntity? prod)? addToCart,
  }) {
    return addToCart?.call(prod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchProducts,
    TResult Function(int id)? fetchProductDetail,
    TResult Function()? lazyLoadProducts,
    TResult Function(ProductEntity? prod)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(prod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_FetchProduts value) fetchProducts,
    required TResult Function(_FetchProdutDetail value) fetchProductDetail,
    required TResult Function(_LazyProductLoading value) lazyLoadProducts,
    required TResult Function(_AddtoCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_FetchProduts value)? fetchProducts,
    TResult? Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult? Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult? Function(_AddtoCart value)? addToCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_FetchProduts value)? fetchProducts,
    TResult Function(_FetchProdutDetail value)? fetchProductDetail,
    TResult Function(_LazyProductLoading value)? lazyLoadProducts,
    TResult Function(_AddtoCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddtoCart implements ProductEvent {
  const factory _AddtoCart({required final ProductEntity? prod}) =
      _$AddtoCartImpl;

  ProductEntity? get prod;
  @JsonKey(ignore: true)
  _$$AddtoCartImplCopyWith<_$AddtoCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<ProductEntity>? get productList => throw _privateConstructorUsedError;
  List<ProductEntity>? get cartList => throw _privateConstructorUsedError;
  ProductEntity? get selectedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      bool hasReachedMax,
      bool loadMore,
      bool error,
      List<ProductEntity>? productList,
      List<ProductEntity>? cartList,
      ProductEntity? selectedProduct});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? hasReachedMax = null,
    Object? loadMore = null,
    Object? error = null,
    Object? productList = freezed,
    Object? cartList = freezed,
    Object? selectedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      cartList: freezed == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoaded,
      bool hasReachedMax,
      bool loadMore,
      bool error,
      List<ProductEntity>? productList,
      List<ProductEntity>? cartList,
      ProductEntity? selectedProduct});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoaded = null,
    Object? hasReachedMax = null,
    Object? loadMore = null,
    Object? error = null,
    Object? productList = freezed,
    Object? cartList = freezed,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$ProductStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      cartList: freezed == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {this.isLoading = false,
      this.isLoaded = false,
      this.hasReachedMax = false,
      this.loadMore = false,
      this.error = false,
      final List<ProductEntity>? productList,
      final List<ProductEntity>? cartList,
      this.selectedProduct})
      : _productList = productList,
        _cartList = cartList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool loadMore;
  @override
  @JsonKey()
  final bool error;
  final List<ProductEntity>? _productList;
  @override
  List<ProductEntity>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductEntity>? _cartList;
  @override
  List<ProductEntity>? get cartList {
    final value = _cartList;
    if (value == null) return null;
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProductEntity? selectedProduct;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, isLoaded: $isLoaded, hasReachedMax: $hasReachedMax, loadMore: $loadMore, error: $error, productList: $productList, cartList: $cartList, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoaded,
      hasReachedMax,
      loadMore,
      error,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_cartList),
      selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final bool isLoading,
      final bool isLoaded,
      final bool hasReachedMax,
      final bool loadMore,
      final bool error,
      final List<ProductEntity>? productList,
      final List<ProductEntity>? cartList,
      final ProductEntity? selectedProduct}) = _$ProductStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get hasReachedMax;
  @override
  bool get loadMore;
  @override
  bool get error;
  @override
  List<ProductEntity>? get productList;
  @override
  List<ProductEntity>? get cartList;
  @override
  ProductEntity? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
