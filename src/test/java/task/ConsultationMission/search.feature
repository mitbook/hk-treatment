Feature:任务管理--->会诊任务--->查询会诊任务列表

  Background:
    * url zlUrl

  Scenario:任务管理--->会诊任务--->查询会诊任务列表
    * def consultation_state = 10
    * def search_path = 0
    * def search = ''
    * def pageno = 1
    * def pagesize = 50
    * call read("classpath:interfaces/task/ConsultationMission/search.feature")
    * match $.result == "success"