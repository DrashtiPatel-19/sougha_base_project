import '../../../utils/exports.dart';

part 'base_request.g.dart';

/// Base request class for all api requests.
///
/// Now only need to generate class for body,
/// the rest will be handled by this generic class.
/// This class is must to use for request which has structure like:
/// {
///   head: {...},
///   body: {...}
/// }.
@JsonSerializable(ignoreUnannotated: true, genericArgumentFactories: true)
class BaseRequest<T> {
  @JsonKey(name: 'head')
  HeadRequest? head;
  @JsonKey(name: 'body')
  T? body;

  BaseRequest({this.head, this.body});

  factory BaseRequest.fromJson(
          Map<String, dynamic> json, T Function(dynamic json) jsonFrom) =>
      _$BaseRequestFromJson<T>(json, jsonFrom);

  Map<String, dynamic> toJson(Object? Function(T) toJson) =>
      _$BaseRequestToJson(this, toJson);
}

@JsonSerializable(ignoreUnannotated: true)
class HeadRequest {
  @JsonKey(name: 'AppName')
  String? appName;
  @JsonKey(name: 'AppVersion')
  String? appVersion;
  @JsonKey(name: 'Code')
  String? code;
  @JsonKey(name: 'Key')
  String? key;
  @JsonKey(name: 'OSName')
  String? osName;
  @JsonKey(name: 'OsVersion')
  String? osVersion;

  HeadRequest({
    this.appName = 'Loans App',
    String appVersion = '',
    this.code = '',
    this.key = 'M24s7KKaghu5vKflesdWLd3PwcbPiXBR',
    String osName = '',
    String osVersion = '',
  })  : osName = GetPlatform.isAndroid ? 'Android' : 'iOS',
        osVersion = GetPlatform.isAndroid ?
            MainController.instance().androidInfo.version.release :
            MainController.instance().iosDeviceInfo.systemVersion,
        appVersion = MainController.instance().packageInfo.version;

  factory HeadRequest.fromJson(Map<String, dynamic> json) =>
      _$HeadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$HeadRequestToJson(this);
}