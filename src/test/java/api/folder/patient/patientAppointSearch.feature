Feature:病历夹-->查询预约列表

  Background:
    * url zlUrl

  @ignore
  @SubscribeList
  Scenario:病历夹-->查询预约列表(根据预约状态查询病例列表)
    Given path '/patient/patientAppointSearch'
    * header authToken = authToken
    * form fields read('classpath:api/folder/patient/patientAppointSearch.json')
    When method post
    Then status 200
    * match $.result == "success"