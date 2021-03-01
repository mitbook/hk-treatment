Feature:任务管理--->共享任务--->撤销任务共享

  Background:
    * url zlUrl


  Scenario:任务管理--->共享任务--->撤销任务共享
    * call read("classpath:case/task/referral/getReferralApply.feature")
    * def referralid = response.data.list[0].referral_id
    * def referral_num = response.data.list[0].referral_num
    * def remark = 'auto_撤销任务共享'
    * print referralid
    * print referral_num
    * call read("classpath:api/task/referral/cancelReferral.feature")
    * match $.result == "success"

    #校验是否撤销共享成功
    * def referral_state = 'ALL'
    * def search_path = 'ALL'
    * def search = referral_num
    * def pageno = 1
    * def pagesize = 50
    * call read("classpath:api/task/referral/getReferralApply.feature")
    * match $.result == "success"
    * match response.data.total == 1