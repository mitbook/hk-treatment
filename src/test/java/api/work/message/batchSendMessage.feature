Feature:工作台--->发送消息

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->发送消息
    Given path '/message/batchSendMessage'
    * header authToken = authToken
    * def id = read("classpath:api/work/message/batchSendMessage.json")
    * set id.patient_id_list[0] = patient_id
    * set id.patient_id_list[1] = patient_id
    * request id
    When method post
    Then status 200