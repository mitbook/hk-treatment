Feature:工作台--->样本库--->查询病例列表--->绑定病例

  Background:
    * url zlUrl


  Scenario:工作台--->样本库--->查询病例列表--->绑定病例

    #复制病例
    * call read("classpath:case/work/patient/copySampleToLocal.feature")
    * match $.result == "success"

    #绑定病例
    * call read("classpath:api/work/patient/bindingScreenPatient.feature")
    * match $.result == "success"