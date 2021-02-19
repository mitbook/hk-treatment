Feature:设置--->pass数据同步

  Background:
    * url zlUrl

  Scenario:pass数据同步
    Given path '/employee/synchroPaasData'
    * header authToken = authToken
    * request {}
    When method post
    Then status 200
    * match $.result == "success"