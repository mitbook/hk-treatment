Feature:主界面--->跳转amce--->获取cookie

  Background:
    * url zlUrl

  @ignore
  Scenario:主界面--->跳转amce--->获取cookie
    * def user = user
    * def verifyCode = verifyCode
    * def random = random

    * call read("classpath:case/login/getKeyPair.feature")
    * match $.result == "success"

    * call read("classpath:api/toLogin/getToken.feature")
    * match $.result == "success"

    * call read("classpath:api/acme/login/checkLoginByTokenAndAppId.feature")
    * match $.result == "success"

    * def systemId = response.data.appList[0].appId
    * call read("classpath:api/acme/login/doLogin.feature")
    * def ACMETMP = responseCookies.ACMETMP.value
    * print ACMETMP的值为:ACMETMP
    * def SESSION = responseCookies.SESSION.value
    * print session的值为:SESSION