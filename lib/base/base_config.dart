import '../../../utils/exports.dart';

const _baseUrlKey = 'baseUrlKey';
const _envKey = 'envKey';
const _ocpAPIMKey = 'ocpApimKey';
const _appNameKey = 'appNameKey';
const _finBoxPLUserIdKey = '_finBoxPLUserIdKey';
const _finBoxPlKey = '_finBoxPlKey';
const _finBoxBlKey = '_finBoxBlKey';
const _finBoxApiKey = '_finBoxApiKey';
const _finBoxOcpSubKey = '_finVoxOcpSubscriptionKey';
const _aesEncryptionKey = "aesEncryptionKey";

Map<String, dynamic>? _config;

void setEnvironment(Environment env) {
  switch (env) {
    case Environment.stage:
      _config = stageConstants;
      break;
    case Environment.production:
      _config = productionConstants;
      break;
  }
}

String get configBaseUrl {
  return _config?[_baseUrlKey] ?? '';
}

String get configEnv {
  return _config?[_envKey] ?? '';
}

String get configOcpAPIMKey {
  return _config?[_ocpAPIMKey] ?? '';
}

String get configAppName {
  return _config?[_appNameKey] ?? '';
}

String get configEncryptionKey {
  return _config?[_aesEncryptionKey] ?? '';
}

String get configFinBoxPLUserId {
  return _config?[_finBoxPLUserIdKey] ?? '';
}

String get configFinBoxPlKey {
  return _config?[_finBoxPlKey] ?? '';
}

String get configFinBoxBlKey {
  return _config?[_finBoxBlKey] ?? '';
}

Map<String, dynamic> stageConstants = {
  _baseUrlKey: "http://localhost:5050/",
  _envKey: 'Stage',
  _ocpAPIMKey: '89fcdc3a21af487a8fef0780e0fd5f89',
  _appNameKey: 'Base App',
  _aesEncryptionKey: '1AD6179DF8C95FCF',
  _finBoxPLUserIdKey: '675EB91919F54D35',
  _finBoxPlKey: 'iUJT1sxksi5ipCye69OTf3b8FCsQlYgl9J6SXRFY',
  _finBoxBlKey: 'sni196oD2W4iM9CO7RuKk105wLDkkEQ9mDxgj0Gh',
  _finBoxApiKey: '7ab6357c2cbf89a8811300db35dfca88',
  _finBoxOcpSubKey: 'a38f6bb8a4b14639aa691aef84b6fa3c',
};

Map<String, dynamic> productionConstants = {
  _baseUrlKey: "http://localhost:5050/",
  _envKey: 'Production',
  _ocpAPIMKey: '278434a17ce94d2785778b65e6de45e0',
  _appNameKey: 'Base App',
  _aesEncryptionKey: 'BC1D991A71B659BB',
  _finBoxPLUserIdKey: '87067FA43D0E4C92',
  _finBoxPlKey: 'rlJHnStExk2caeOOq78yC5HSQCnRKuXf8bfh6LfA',
  _finBoxBlKey: 'aFVLYCoJeA5D8Su1yIj6qo8Tk57lnSU8QXoZaH74',
  _finBoxOcpSubKey: 'f36b05773d984daf89afaf642fa788ae',
};
