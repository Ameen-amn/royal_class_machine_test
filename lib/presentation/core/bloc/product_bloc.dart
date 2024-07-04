import 'package:bloc/bloc.dart';
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
  ProductBloc({required this.produtUsecase}) : super(ProductState.initial()) {
    on<_FetchProduts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final List<ProductEntity> productList =
          await produtUsecase.getAllProduct();
      emit(state.copyWith(
          isLoaded: true, isLoading: false, productList: productList));
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
