
import '../../network/ApiService.dart';
import '../../network/api_result.dart';
import '../models/SignupRequestBody.dart';
import '../models/SignupResponse.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(errro.toString());
    }
  }
}