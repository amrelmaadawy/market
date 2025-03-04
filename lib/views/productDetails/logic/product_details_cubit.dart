import 'package:app/core/dio_servises.dart';
import 'package:app/views/productDetails/logic/models/rates.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());
  final DioServises _dioServises = DioServises();
  List<Rates> rates = [];
  Future<void> getRate({required String productId}) async {
    emit(GetRatesLoadingState());

    try {
      Response response =
          await _dioServises.getData("rates?select=*&product_id=eq.$productId");
      for (var rate in response.data) {
        rates.add(Rates.fromJson(rate));
      }
      emit(GetRatesSuccessState());
    } catch (e) {
      emit(GetRatesErrorState(error: e.toString()));
    }
  }
}
