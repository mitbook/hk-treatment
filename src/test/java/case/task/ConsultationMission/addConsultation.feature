Feature:任务管理--->会诊任务--->新增会诊

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')

  @ignore
  Scenario:任务管理--->会诊任务--->新增会诊
    * def type = 0
    * def consultation_receive_area = 330000
    * def consultation_receive_hospital = 13631
    * def consultation_receive_department = 13632
    * def consultation_remark =
    * call read("classpath:case/task/ConsultationMission/addPatient.feature")
    * def case_id = response.data
    * call read("classpath:api/task/ConsultationMission/addConsultation.feature")
    * match $.result == "success"