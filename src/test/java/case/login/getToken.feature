Feature: 获取tokenId

  Background:
    * url zlUrl

  @ignore
  Scenario: 获取tokenId

    * call read("classpath:api/toLogin/getToken.feature")

    * match $.result == "success"