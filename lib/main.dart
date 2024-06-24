import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:missing/cubit/login/LoginCubit.dart';
import 'package:missing/cubit/singup/sign_up_cubit.dart';
import 'package:missing/data/repos/LoginRepo.dart';
import 'package:missing/data/repos/SignupRepo.dart';
import 'package:missing/network/ApiService.dart';
import 'package:missing/screens/page1.dart';

void main() {
  runApp(const MissingApp());
}

class MissingApp extends StatelessWidget {
  const MissingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(LoginRepo(ApiService(Dio()))),
        ),
        BlocProvider(
          create: (context) => SignupCubit(SignupRepo(ApiService(Dio()))),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Page1(),
      ),
    );
  }
}
