Feature:工作台--->删除病例

  Background:
    * url zlUrl

  Scenario:工作台--->删除病例
    #获取病例新增的数据
    * call read("classpath:case/work/workbenchButton/saveRecord.feature")
    * def case_id = response.data.case_id

    ##新增病例之后进行删除
    * call read("classpath:api/work/case/deleteCase.feature")
    * match $.result == "success"
    * def caseId = case_id

    #查询数据库的病例数据
    * call read("classpath:case/work/case/selectCaseId.feature")

    #校验数据库中的case_id对应的case_state是否为0,如果为0说明已经删除成功
    * match case_state == 0

    * match case_id == caseId


  Scenario:工作台--->删除病例(共享病例)
    #查询病例列表
    * call read("classpath:case/work/workbench/queryCaseList.feature@hk")

    #申请共享
    * def type = ''
    * def case_id = response.data.list[0].case_id
    * def patient_name = response.data.list[0].patient_name
    * def patient_sex = response.data.list[0].patient_sex
    * def patient_birthday = response.data.list[0].patient_birthday
    * def mobile = '13656694002'
    * def referral_receive_area = 330000
    * def referral_receive_hospital = 13631
    * def referral_receive_depart = 13632

    #添加病例共享
    * call read("classpath:api/task/referral/addReferral.feature")

    #删除共享病例
    * call read("classpath:api/work/case/deleteCase.feature")

    #校验共享病例是否能删除
    * match response.message == '共享病历不允许删除，请确认'



