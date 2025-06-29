

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String name;
  final String phone;
  final int gender ;


  SignUpRequestBody({
    required this.gender,
    required this.passwordConfirmation,
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
