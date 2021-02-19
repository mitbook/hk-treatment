Feature:任务管理--->共享任务--->新增共享

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')

  @ignore
  Scenario:任务管理--->共享任务--->新增共享
    * call read("classpath:task/referral/getRepeatCase.feature")
    * def case_id = response.data
    * def type = ''
    * def referral_receive_area = 330000
    * def referral_receive_hospital = 13631
    * def referral_receive_depart = 13632
    * def referral_remark = 'auto_新增共享'
    * call read("classpath:interfaces/task/referral/addReferral.feature")
    * match $.result == "success"