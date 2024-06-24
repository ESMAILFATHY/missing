import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/LoginRequestBody.dart';
import '../data/models/LoginResponse.dart';
import '../data/models/SignupRequestBody.dart';
import '../data/models/SignupResponse.dart';

part 'ApiService.g.dart';

@RestApi(baseUrl: "http://findereg.me/api")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/login")
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST("/register")
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
  


}