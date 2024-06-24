import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/LoginRequestBody.dart';
import '../../data/repos/LoginRepo.dart';
import '../../network/DioFactory.dart';
import '../../network/SharedPrefHelper.dart';
import 'LoginStates.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
      print("Success");
    }, failure: (error) {
      emit(LoginState.error(error: error.toString() ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString("token", token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}