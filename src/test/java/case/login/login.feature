Feature: 获取token

  Background:
    * url zlUrl


  Scenario: 获取token
    * def user = user
    * def verifyCode = verifyCode
    * def random = random
    * call read("classpath:case/login/getKeyPair.feature")
    * match $.result == "success"
    * call read("classpath:api/toLogin/getToken.feature")
    * match $.result == "success"
    * call read("classpath:api/toLogin/login.feature")
    * match $.result == "success"