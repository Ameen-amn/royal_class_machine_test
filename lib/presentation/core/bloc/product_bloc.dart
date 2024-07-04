import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/domain/entity/product_entity.dart';
import 'package:royal_class/domain/usecase/produt_usecase.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@Injectable()
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProdutUsecase produtUsecase;
  static const int productsPerPage = 8;
  List<ProductEntity> allProducts = [];
  int currentPage = 1;
  ProductBloc({required this.produtUsecase}) : super(ProductState.initial()) {
    on<_LazyProductLoading>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        if (state.productList?.isEmpty ?? true) {
          allProducts = await produtUsecase.getAllProduct();
        }
        final productsToDisplay =
            allProducts.take(currentPage * productsPerPage).toList();

        final hasReachedMax = (productsToDisplay.length) >= allProducts.length;
        
        emit(state.copyWith(
            isLoaded: true,
            isLoading: false,
            loadMore: false,
            hasReachedMax: hasReachedMax,
            productList: productsToDisplay));
        currentPage++;
      },
    );
    on<_FetchProduts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      allProducts = await produtUsecase.getAllProduct();
    });

    on<_FetchProdutDetail>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productDetail =
            await produtUsecase.getProductDetail(id: event.id);
        emit(state.copyWith(isLoading: false, selectedProduct: productDetail));
      },
    );
  }
}
