
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'loginstate_state.dart';

class LoginstateCubit extends Cubit<LoginstateState> {
  LoginstateCubit() : super(LoginstateInitial());

  SupabaseClient client = Supabase.instance.client;

  Future<void> login({required String email, required String password}) async {
    emit(LoginstateLoading());
    try {
      await client.auth.signInWithPassword(password: password, email: email);
      emit(LoginstateSuccesses());
    } on AuthApiException catch (e) {
      emit(LoginstateErorr(e.message));
      if (kDebugMode) {
        print(e.toString());
      }
    } catch (e) {
      emit(LoginstateErorr(e.toString()));
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
