Feature:工作台--->样本库--->提取样本--->复制样本

  Background:
    * url zlUrl


  @ignore
  Scenario:工作台--->样本库--->提取样本--->复制样本
    #获取样本库中的列表数据
    * call read("classpath:case/work/patient/getSampleBySource.feature")
    * match $.result == "success"

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


    #在复制样本当中需要加上别人的病程进行复制(会提示就诊人姓名与母亲姓名必须一致,条件查询的时候)
    #所以该功能无法测试
