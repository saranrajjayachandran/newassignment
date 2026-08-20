import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newassignment/screens/productScreen/data/model/productModel.dart';
import 'package:newassignment/screens/productScreen/domain/useCase/productUseCase.dart';
import 'package:newassignment/services/di/dependencyInjection.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  List<ProductModel> lst_products = [];
  bool isResponseCame = false;
  ProductUseCase useCase = sl<ProductUseCase>();
  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      // TODO: implement event handler

      if(event is FetchProductEvent) {
        try{
          final result = await useCase.getProductUseCase();
          isResponseCame = true;
          lst_products = result;
          emit(ProductFetchSuccessState());
        }catch(e){
          emit(ProductFetchFailedState());
        }
      }

    });
  }
}
