import 'package:json_annotation/json_annotation.dart';

part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? message;
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    // Handle the conversion of status from int to bool
    bool? status;
    if (json['status'] is int) {
      status = (json['status'] as int) == 1;
    } else if (json['status'] is bool) {
      status = json['status'] as bool?;
    }

    return LoginResponse(
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: status,
      code: (json['code'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final String? token;
  final String? userName;

  UserData({
    this.token,
    this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
