Feature:病历夹-->查询预约列表--->更改预约

  Background:
    * url zlUrl

  @ignore
  Scenario:病历夹-->查询预约列表--->更改预约
    Given path '/patient/patientAppointSearch'
    * header authToken = authToken
    * form fields read('classpath:api/folder/patient/Appoint.json')
    When method post
    Then status 200