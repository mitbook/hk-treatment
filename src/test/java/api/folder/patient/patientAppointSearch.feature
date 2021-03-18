Feature:病历夹-->查询预约列表

  Background:
    * url zlUrl

  @ignore
  @mit
  Scenario:病历夹-->查询预约列表
    Given path '/patient/patientAppointSearch'
    * header authToken = authToken
    * form fields read('classpath:api/folder/patient/patientCaseSearch.json')
    When method post
    Then status 200


  @ignore
  @hk
  Scenario:病历夹-->查询预约列表(根据预约状态查询病例列表)
    Given path '/patient/patientAppointSearch'
    * header authToken = authToken
    * form fields read('classpath:api/folder/patient/patientAppointSearchs.json')
    When method post
    Then status 200