Feature:首页--->获取待处理的消息

  Background:
    * url zlUrl


  Scenario:首页--->获取待处理的消息
    Given path '/communicate/getMessageStatistic'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"