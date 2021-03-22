Feature:任务管理--->会诊任务--->新增会诊

  Background:
    * url zlUrl

  @ignore
  Scenario:任务管理--->会诊任务--->新增会诊
    Given path '/ConsultationMission/addConsultation'
    * header authToken = authToken
    * form fields read('classpath:api/task/ConsultationMission/addConsultation.json')
    When method post
    Then status 200
    * match $.result == "success"