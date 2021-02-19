Feature:消息中心--->医患沟通--->查询医患信息列表

  Background:
    * url zlUrl

  @ignore
  Scenario:消息中心--->医患沟通--->查询医患信息列表
    Given path '/communicate/getCommunicateRecords'
    * header authToken = authToken
    * request read("classpath:api/message/communicate/getCommunicateRecords.json")
    When method post
    Then status 200