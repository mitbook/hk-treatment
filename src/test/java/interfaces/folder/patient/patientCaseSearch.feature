Feature:查询病例列表

  Background:
    * url zlUrl


  Scenario:查询病例列表
    Given path '/patient/patientCaseSearch'
    * header authToken = authToken
    * form fields read('classpath:interfaces/folder/patient/patientCaseSearch.json')
    When method post
    Then status 200