@ignore
Feature: 查询case_id是否已经删除

  Background:

    * def dbUtils = Java.type('util.db.jdbcUtils')
    * def db = new dbUtils(dbConfig)

  @ignore
  Scenario: 查询case_id是否已经删除
    * def sqlTest = "SELECT case_id,case_state FROM dt_tb_case WHERE case_id = "+"'" +caseId+ "'"
    * print sqlTest
    * def dbTestData = db.readRows(sqlTest)
    * def case_id = dbTestData[0].case_id
    * print case_id
    * def case_state = dbTestData[0].case_state
    * print 病例状态:case_state