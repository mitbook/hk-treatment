Feature:直报中心--->获取共享任务列表

  Background:
    * url zlUrl

  Scenario:获取共享任务列表
    * def referral_state = 'ALL'
    * def search_path = 'ALL'
    * def search = ''
    * def pageno = 1
    * def pagesize = 50
    * call read("classpath:interfaces/task/referral/getReferralApply.feature")
    * match $.result == "success"
