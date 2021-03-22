Feature:任务管理--->会诊任务--->撤销会诊任务

  Background:
    * url zlUrl

  @ignore
  Scenario:任务管理--->会诊任务--->撤销会诊任务
    Given path '/ConsultationMission/cancleConsultation'
    * header authToken = authToken
    * form fields read('classpath:api/task/ConsultationMission/cancleConsultation.json')
    When method post
    Then status 200
    * match $.result == "success"