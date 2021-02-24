Feature:工作台--->删除病例

  Background:
    * url zlUrl

  Scenario:工作台--->删除病例
    * call read("classpath:case/work/workbenchButton/saveRecord.feature")
    * def case_id = response.data.case_id
    * call read("classpath:api/work/case/deleteCase.feature")
    * match $.result == "success"
    * def caseId = case_id
    * call read("classpath:case/work/case/selectCaseId.feature")
    #校验数据库中的case_id对应的case_state是否为0,如果为0说明已经删除成功
    * match case_state == 0
    * match case_id == caseId
