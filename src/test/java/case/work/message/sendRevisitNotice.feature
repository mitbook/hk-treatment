Feature:工作台--->复检安排

  Background:
    * url zlUrl

  Scenario:工作台--->复检安排
    * call read("classpath:case/work/message/getNotice.feature")
    * def patient_mobile = '13656694002'
    * def type = 0
    * def appoint_time = '9090-12-31'
    * def appoint_type = 0
    * def import_remark = null
    * def advice = null
    * def record_id = null
    * call read("classpath:api/work/message/sendRevisitNotice.feature")
    * match $.result == "success"