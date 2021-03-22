Feature:任务管理--->会诊任务--->查询会诊任务列表

  Background:
    * url zlUrl


  @ignore
  Scenario:任务管理--->会诊任务--->查询会诊任务列表
    Given path '/ConsultationMission/search'
    * header authToken = authToken
    * form fields read('classpath:api/task/ConsultationMission/search.json')
    When method post
    Then status 200
    * match $.result == "success"