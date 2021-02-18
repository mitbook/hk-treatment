function fn() {
  var env = karate.env;
  if (!env) {
    env = 'test';
  }

  //设置将要返回的JSON对象键值对
  var config = {
    env: env,
    zlUrl: 'http://172.100.100.224:8002'
  }

  if (env == 'test') {
    config.zlUrl = 'http://172.100.100.224:8002'

  } else if (env == 'testAuto') {
    config.zlUrl = 'http://172.100.100.224:8002'
  } else if (env == 'pre') {
    config.zlUrl = 'http://172.100.100.224:8002'
  }
  karate.configure('connectTimeout', 5000);
  return config;
}