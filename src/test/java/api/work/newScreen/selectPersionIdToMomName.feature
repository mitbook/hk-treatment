@ignore
Feature: 查询case_id是否已经删除

  Background:

    * def dbUtils = Java.type('util.db.jdbcUtils')
    * def db = new dbUtils(dbConfig)

  @ignore
  Scenario: 查询case_id是否已经删除
    * def sqlTest = "select mother_name FROM dt_tb_patient WHERE personid = "+"'" +personId+ "'"
    * print sqlTest
    * def dbTestData = db.readRows(sqlTest)
    * print dbTestData