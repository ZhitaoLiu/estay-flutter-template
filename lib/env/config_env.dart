enum ENV {
  dev,
  test,
  pre,
  pro
}

class EnvConfig {

  // 环境变量
  static ENV _env;
  static ENV get env => _env;

  // 环境配置
  static Map<String, dynamic> _envConfig;
  static Map<String, dynamic> get envConfig => _envConfig;

  // 域名
  static String _baseURL;
  static String get baseURL => _envConfig['baseURL'];

  // 环境常量
  static Map<String, dynamic> devConfig = {
    "baseURL": "https://dev.estay.com",
  };
  static Map<String, dynamic> testConfig = {
    "baseURL": "https://test.estay.com",
  };
  static Map<String, dynamic> preConfig = {
    "baseURL": "https://pre.estay.com",
  };
  static Map<String, dynamic> proConfig = {
    "baseURL": "https://wxapi.estay.com",
  };

  // 环境设置(初始化)
  static void setENVConfig(ENV env) {
    _env = env;
    switch(env) {
      case ENV.dev:
        _envConfig = devConfig;
        break;
      case ENV.test:
        _envConfig = testConfig;
        break;
      case ENV.pre:
        _envConfig = preConfig;
        break;
      case ENV.pro:
        _envConfig = proConfig;
        break;
      default:
        break;
    }
  }
}