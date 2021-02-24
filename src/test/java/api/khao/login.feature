Feature: 小程序登录

  Background:
    * url appletsUrl

  @ignore
  Scenario:小程序登录
    Given path '/khaos/openlogin'
    * form fields read("classpath:api/khao/login.json")
    * request {}
    When method post
    Then status 200
    * match $.result == "success"
    * def appletToken = response.data.usertoken