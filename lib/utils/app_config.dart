const _baseUrl = "baseUrl";
Environment? environment;

enum Environment { dev, stage, prod }

Map<String, dynamic>? _config;

void setEnvironment(Environment env) {
  environment = env;
  switch (env) {
    case Environment.dev:
      _config = devConstants;
      break;
    case Environment.prod:
      _config = prodConstants;
      break;
    default:
      _config = devConstants;
      break;
  }
}

dynamic get apiBaseUrl {
  return _config![_baseUrl];
}

Map<String, dynamic> devConstants = {
  _baseUrl: "https://randomuser.me/api/",
};

Map<String, dynamic> prodConstants = {
  _baseUrl: "https://randomuser.me/api/",
};
