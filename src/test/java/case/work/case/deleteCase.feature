Feature:工作台--->删除病例

  Background:
    * url zlUrl
    * def randomName = Java.type('util.rand.RName')
    * def time = Java.type('util.rsa.GetTime')

  Scenario:工作台--->删除病例(无共享病例的标记)
    #获取病例新增的数据
    * call read("classpath:case/work/workbenchButton/saveRecord.feature@addCaseAcme")
    * match $.result == "success"

    ##################在工作台中的最左侧中的数据来源修改需要分为4种情况(除了共享病例以外)
    * def case_id = response.data.case_id

    #新增病例之后进行删除
    * call read("classpath:api/work/case/deleteCase.feature")
    * def caseId = case_id

    #查询数据库的病例数据
    * call read("classpath:case/work/case/selectCaseId.feature")

    #校验数据库中的case_id对应的case_state是否为0,如果为0说明已经删除成功
    * match case_state == 0

    #校验case_id是否一致
    * match case_id == caseId

    * match $.result == "success"


  Scenario:工作台--->删除病例(共享病例,申请中)
    #查询病例列表
    * call read("classpath:case/work/workbench/queryCaseList.feature@selectCaseList")
    * match $.result == "success"

    * def type = ''
    * def case_id = response.data.list[0].case_id
    * def patient_name = response.data.list[0].patient_name
    * def patient_sex = response.data.list[0].patient_sex
    * def patient_birthday = response.data.list[0].patient_birthday
    * def mobile = '13656694005'
    * def referral_receive_area = 330000
    * def referral_receive_hospital = 13631
    * def referral_receive_depart = 13632

    #添加病例共享
    * call read("classpath:api/task/referral/addReferral.feature")
    * match $.result == "success"

    #删除共享病例
    * call read("classpath:api/work/case/deleteCase.feature")


    #校验共享病例是否能删除
    * match response.message == '共享病历不允许删除，请确认'

  Scenario:工作台--->删除病例(共享病例,已撤回)
    * def name = randomName.getRandomName()
    * def patient_name = name
    * def patient_sex = '男'
    * def patient_birthday = '2021-03-04'
    * def mother_name = name
    * def patient_mobile = '13656694005'
    * def cure_date = '2021-03-04'
    * def medDate = '2021-03-04'
    * call read("classpath:api/work/workbenchButton/saveRecord.feature@partAddCase")
    * match $.result == "success"
    * def case_id = response.data.case_id

    #申请病例共享
    * def type = ''
    * def mobile = patient_mobile
    * def referral_receive_area =  330000
    * def referral_receive_hospital =  13631
    * def referral_receive_depart =  13632
    * def referral_remark = 'auto_申请病例共享'
    * call read("classpath:api/task/referral/addReferral.feature")
    * match $.result == "success"
    * def referralid = response.data.referral_id
    * def case_id = response.data.case_id

    #撤回共享病例
    * def remark = 'auto_撤回共享病例'
    * call read("classpath:api/task/referral/cancelReferral.feature")
    * match $.result == "success"

    * def caseId = case_id
     #删除共享病例
    * call read("classpath:api/work/case/deleteCase.feature")

    #查询数据库的病例数据
    * call read("classpath:case/work/case/selectCaseId.feature")
    #校验数据库中的case_id对应的case_state是否为0,如果为0说明已经删除成功
    * match case_state == 0

    #校验case_id是否一致
    * match case_id == caseId
