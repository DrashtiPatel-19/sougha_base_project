// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      profile: json['profile'],
      isRegistrationDetailsAdded:
          json['is_registration_details_added'] as String?,
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      ipAddress: json['ip_address'] as String?,
      accessToken: json['access_token'] as String?,
      lastAccess: json['last_access'] as String?,
      userRoleType: json['user_role_type'],
      loginReturnUrl: json['login_return_url'],
      totalLogin: json['total_login'] as int?,
      firstLoginDate: json['first_login_date'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'profile': instance.profile,
      'is_registration_details_added': instance.isRegistrationDetailsAdded,
      'id': instance.id,
      'uuid': instance.uuid,
      'ip_address': instance.ipAddress,
      'access_token': instance.accessToken,
      'last_access': instance.lastAccess,
      'user_role_type': instance.userRoleType,
      'login_return_url': instance.loginReturnUrl,
      'total_login': instance.totalLogin,
      'first_login_date': instance.firstLoginDate,
    };
