Feature:任务管理--->共享任务--->获取共享任务列表

  Background:
    * url zlUrl

  Scenario:任务管理--->共享任务--->获取共享任务列表
    * def referral_state = 'ALL'
    * def search_path = 'ALL'
    * def search = ''
    * def pageno = 1
    * def pagesize = 50
    * call read("classpath:api/task/referral/getReferralApply.feature")
    * match $.result == "success"
