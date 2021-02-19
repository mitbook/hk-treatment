Feature: 获取公钥

  Background:
    * url zlUrl

  @ignore
  Scenario:  获取公钥

    * call read("classpath:api/toLogin/getKeyPair.feature")
    * match $.result == "success"