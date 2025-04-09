import 'package:app/core/dio_servises.dart';
import 'package:app/core/models/product_model/product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final DioServises _dioServises = DioServises();
  List<ProductModel> products = [];
  List<ProductModel> searchResult = [];
  Future<void> getProduct({String? quary}) async {
    emit(GetDataLoadingState());
    try {
      Response response = await _dioServises
          .getData("products?select=*,fave_product(*),purchase(*)");
      for (var product in response.data) {
        products.add(ProductModel.fromJson(product));
      }
      searchProduct(quary);
      emit(GetDataSuccesseState());
    } catch (e) {
      emit(GetDataErrorState(e.toString()));
    }
  }

  void searchProduct(String? quary) {
    if (quary != null) {
      for (var product in products) {
        if (product.productName!.toLowerCase().contains(quary.toLowerCase())) {
          searchResult.add(product);
        }
      }
    }
  }
}
