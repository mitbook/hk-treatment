Feature:病历夹-->查询预约列表

  Background:
    * url zlUrl

  @ignore
  Scenario:查询预约列表
    Given path '/patient/patientAppointSearch'
    * header authToken = authToken
    * form fields read('classpath:interfaces/folder/patient/patientCaseSearch.json')
    When method post
    Then status 200