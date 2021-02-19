Feature:任务管理--->会诊任务--->新增会诊

  Background:
    * url zlUrl

  @ignore
  Scenario:任务管理--->会诊任务--->新增会诊
    Given path '/ConsultationMission/addPatient'
    * header authToken = authToken
    * form fields read('classpath:api/task/ConsultationMission/addPatient.json')
    When method post
    Then status 200