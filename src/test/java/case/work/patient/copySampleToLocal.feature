Feature:工作台--->样本库--->提取样本--->复制样本

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->提取样本--->复制样本
    #获取样本库中的列表数据
    * call read("classpath:case/work/patient/getSampleBySource.feature")

    * def sampleid = response.data[0].sampleid

    * def workKeys = []
    * set workKeys[0] = sampleid

    #复制样本
    * call read("classpath:api/work/patient/copySampleToLocal.feature")
    * match $.result == "success"

    #获取样本库提取按钮中的病例列表
    * call read("classpath:api/work/patient/getScreenPatient.feature")
    * def personId = response.data[0].list[0].personid
    * match $.result == "success"
