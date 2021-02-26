Feature: 采样管理 - 样本登记

  Background:
    * url acmeUrl
    * configure cookies = { SESSION: "#(SESSION)"}
    * def randomName = Java.type('util.rand.RName')
    * def baCode = Java.type('util.data.BarCode')
    
  @ignore
  Scenario: 接口定义- 样本登记接口
    * def barCodes = baCode.barCode()
    * def name = randomName.getRandomName()
    * def freedepend =  ''
    * def mcardtype =  ''
    * def isfee =  '0'
    * def mhousehold =  ''
    * def mcity =  ''
    * def fhousehold =  ''
    * def fcity =  ''
    * def sampletype =  '1'
    * def mothername =  name
    * def compoId =  ''
    * def areaid =  '421182'
    * def hosid =  '5a41bdc3-02b9-4e8d-a501-5045b5aa9fa6'
    * def deptid =  '214f025d-976d-4fd3-b547-6e680e87cf7e'
    * def barcode =  barCodes
    * def pregweek =  '20'
    * def pregday =  '1'
    * def midentitycard =  '110101199003070396'
    * def birthday =  '1993-08-15 00:00'
    * def collectdate =  '2021-02-26 14:56'
    * def personweight =  '600'
    * def address =  '香港特别行政区'
    * def mobile =  '13656694002'
    * def samplequality =  '1'
    * def borntype =  '1'
    * def linkman =  ''
    * def admissionnumber =  ''
    * def labitem =  'TSH'
    * def race =  '汉族'
    * def personsex =  '1'
    * def freecode =  ''
    * def housetype =  '1'
    * def identitycard =  ''
    * def mcounty =  ''
    * def fidentitycard =  ''
    * def fcounty =  ''
    * def labitem_labitems_extend =  ''
    * def housearea =  ''
    * def collectnumber =  ''
    * def recallnumber =  ''
    * def personname =  ''
    * def familyNumber =  ''
    * def entryDept =  ''
    * def headVoucherNum =  ''
    * def reserved1 =  ''
    * def detectionunit =  ''
    * def detecttelephone =  ''
    * def labstring =  ''
    * def reserved10 =  ''
    * def supervisionunit =  ''
    * def supervisiontelephone =  ''
    * def receiptdate =  ''
    * def personremark =  ''
    * def centerid =  'bb717701-10de-47ee-b49e-693261c6df22'
    * def nowdeptid =  '07eeec75-079b-4fa9-93cf-c45ddc9a87b9'
    * def operator =  '黄冈市妇幼保健院'
    * def personid =  null
    * def sampleid =  null
    * def bdid =  null
    * def cityid =  '421100'
    * def labitems =  'TSH'
    * def pagecode =  'sampleadd'
    * def modifydetail =  '样本录入'
    * call read("classpath:api/acme/iEhr/PersonSample.feature")