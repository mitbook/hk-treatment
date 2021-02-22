Feature:任务管理--->会诊任务--->撤销会诊任务

  Background:
    * url zlUrl


  Scenario:任务管理--->会诊任务--->撤销会诊任务
    * call read("classpath:case/task/ConsultationMission/addConsultation.feature")
    * def id = response.data.referral_id
    * def remark = 'auto_撤销会诊任务'

    * call read("classpath:api/task/ConsultationMission/cancleConsultation.feature")
    * match $.result == "success"