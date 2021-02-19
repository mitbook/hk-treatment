Feature:病历夹-->查询就诊列表

  Background:
    * url zlUrl

  @ignore
  Scenario:病历夹-->查询就诊列表
    Given path '/patient/patientCaseSearch'
    * header authToken = authToken
    * form fields read('classpath:interfaces/folder/patient/patientCaseSearch.json')
    When method post
    Then status 200