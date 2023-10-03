// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRequest<T> _$BaseRequestFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseRequest<T>(
      head: json['head'] == null
          ? null
          : HeadRequest.fromJson(json['head'] as Map<String, dynamic>),
      body: _$nullableGenericFromJson(json['body'], fromJsonT),
    );

Map<String, dynamic> _$BaseRequestToJson<T>(
  BaseRequest<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'head': instance.head,
      'body': _$nullableGenericToJson(instance.body, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

HeadRequest _$HeadRequestFromJson(Map<String, dynamic> json) => HeadRequest(
      appName: json['AppName'] as String? ?? 'Loans App',
      appVersion: json['AppVersion'] as String? ?? '',
      code: json['Code'] as String? ?? '',
      key: json['Key'] as String? ?? 'M24s7KKaghu5vKflesdWLd3PwcbPiXBR',
      osName: json['OSName'] as String? ?? '',
      osVersion: json['OsVersion'] as String? ?? '',
    );

Map<String, dynamic> _$HeadRequestToJson(HeadRequest instance) =>
    <String, dynamic>{
      'AppName': instance.appName,
      'AppVersion': instance.appVersion,
      'Code': instance.code,
      'Key': instance.key,
      'OSName': instance.osName,
      'OsVersion': instance.osVersion,
    };
