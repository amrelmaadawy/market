import 'package:app/core/dio_servises.dart';
import 'package:app/views/productDetails/logic/models/rates.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());
  final DioServises _dioServises = DioServises();
  List<Rates> rates = [];
  int userRate = 5;
  int avrage = 0;
  Future<void> getRate({required String productId}) async {
    emit(GetRatesLoadingState());

    try {
      Response response =
          await _dioServises.getData("rates?select=*&product_id=eq.$productId");
      for (var rate in response.data) {
        rates.add(Rates.fromJson(rate));
      }

      for (var userRate in rates) {
        avrage += userRate.rates!;
      }
      avrage = avrage ~/ rates.length;

      List<Rates> userRates = rates.where((Rates rates) {
        return rates.userId == Supabase.instance.client.auth.currentUser!.id;
      }).toList();
      if (userRates.isNotEmpty) {
        userRate = userRates[0].rates!;
      }
      if (kDebugMode) {
        print('rate for user ${rates[0].userId}');
        print('user Id ${Supabase.instance.client.auth.currentUser!.id}');
        print('user length ${userRates.length}');
        print('user length $userRate');
      }
      emit(GetRatesSuccessState());
    } catch (e) {
      emit(GetRatesErrorState(error: e.toString()));
    }
  }
}
