function fn() {
  var env = karate.env;
  if (!env) {
    env = 'test';
  }

  //设置将要返回的JSON对象键值对
  var config = {
    env: env,
    zlUrl: 'http://172.100.100.224:8002',
    acmeUrl: 'http://test.acme.biosan.cn',
    appletsUrl:'https://xcx.sys.saas.biosan.cn'
  }

  if (env == 'test') {
    config.zlUrl = 'http://172.100.100.224:8002'
    config.acmeUrl = 'http://test.acme.biosan.cn'
    config.appletsUrl= 'https://xcx.sys.saas.biosan.cn'
    config.dbConfig = karate.read('classpath:dBConfig.json')

  } else if (env == 'testAuto') {
    config.zlUrl = 'http://172.100.100.224:8002'
    config.acmeUrl = 'http://test.acme.biosan.cn'
    config.appletsUrl= 'https://xcx.sys.saas.biosan.cn'
    config.dbConfig = karate.read('classpath:dBConfig.json')
  } else if (env == 'pre') {
    config.zlUrl = 'http://172.100.100.224:8002'
    config.acmeUrl = 'http://test.acme.biosan.cn'
    config.appletsUrl= 'https://xcx.sys.saas.biosan.cn'
    config.dbConfig = karate.read('classpath:dBConfig.json')
  }
  karate.configure('connectTimeout', 5000);
  var authTokenBag = karate.callSingle(
      "classpath:case/login/login.feature", config)
  config.authToken = authTokenBag.authToken
  karate.log("karate-config.js文件中获取到接口认证authToken的值:" + config.authToken)
  return config;
}