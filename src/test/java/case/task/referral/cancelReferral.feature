Feature:任务管理--->共享任务--->撤销任务共享

  Background:
    * url zlUrl


  Scenario:任务管理--->共享任务--->撤销任务共享
    * def remark = 'auto_撤销任务共享'

    * call read("classpath:case/task/referral/addReferral.feature")
    * match $.result == "success"