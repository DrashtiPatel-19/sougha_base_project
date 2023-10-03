import 'package:json_annotation/json_annotation.dart'; 

part 'login_response.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class LoginResponse {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profile')
  dynamic profile;
  @JsonKey(name: 'is_registration_details_added')
  String? isRegistrationDetailsAdded;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'uuid')
  String? uuid;
  @JsonKey(name: 'ip_address')
  String? ipAddress;
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'last_access')
  String? lastAccess;
  @JsonKey(name: 'user_role_type')
  dynamic userRoleType;
  @JsonKey(name: 'login_return_url')
  dynamic loginReturnUrl;
  @JsonKey(name: 'total_login')
  int? totalLogin;
  @JsonKey(name: 'first_login_date')
  String? firstLoginDate;

  LoginResponse({this.name, this.email, this.profile, this.isRegistrationDetailsAdded, this.id, this.uuid, this.ipAddress, this.accessToken, this.lastAccess, this.userRoleType, this.loginReturnUrl, this.totalLogin, this.firstLoginDate});

   factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

   Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

