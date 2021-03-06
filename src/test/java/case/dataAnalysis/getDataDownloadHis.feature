Feature:数据分析-->导出记录

  Background:
    * url zlUrl


  Scenario:数据分析-->导出记录
    * def experimentCode = 'TSH'
    * def patientSex = ''
    * def pageno = 1
    * def pagesize = 100
    * def sampleAction = ["5f6df443e4054fbdb03a0c10e0ee6f80", "a9deb33c37814eb393c697e2ef3209f7", "6721230835c74d4d897648124974d25b", "ac7dc8eca73f485ab411637381cd16bb", "7902b4713ffa4bddba31c3e41a08b2d2"]

    #查询数据分析列表
    * call read("classpath:api/dataAnalysis/getDataAnalysisList.feature")
    * def patientId = response.data.list[0].patientId
    * match $.result == "success"

    #下载单条数据的excel(excel下载返回的数据非json类型,故此不做返回状态文字的校验)
    * call read("classpath:api/dataAnalysis/downloadDataByPatientId.feature")

    #数据分析预下载,降低服务器压力
    * call read("classpath:api/dataAnalysis/preDownloadDataList.feature")
    * match $.result == "success"

    #查询数据预下载记录
    * call read("classpath:api/dataAnalysis/getDataDownloadHis.feature")
    * match $.result == "success"