Feature: 小程序登录

  Background:
    * url appletsUrl

  @ignore
  Scenario:小程序登录
    * call read("classpath:api/khao/login.feature")
    * match $.result == "success"
    * def appletToken = response.data.usertoken