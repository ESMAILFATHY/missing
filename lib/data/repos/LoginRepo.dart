

import '../../network/ApiService.dart';
import '../../network/api_result.dart';
import '../models/LoginRequestBody.dart';
import '../models/LoginResponse.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(errro.toString());
    }
  }
}
