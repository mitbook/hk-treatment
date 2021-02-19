Feature: 获取token

  Background:
    * url zlUrl


  Scenario: 获取token
    * def user = 'hgsfy'
    * def verifyCode = '1234'
    * def random = '1234567890'
    * call read("classpath:case/login/getKeyPair.feature")
    * call read("classpath:api/toLogin/getToken.feature")
    * call read("classpath:api/toLogin/login.feature")
    * match $.result == "success"