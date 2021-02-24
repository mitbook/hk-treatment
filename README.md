```shell script
诊疗自动化脚本
###注意
   1.用mvn命令执行用例的时候需要把jvm的栈大小设置成大一点
   2.需用命令调试内存,否在栈内存溢出
###栈溢出产生原因
   1.频繁递归调用

###注意事项:
1.导入病例:persionId是唯一的
2.绑定病例:pseridid改为acme的 persionId或者老新刷的persionId
3.在新增病人到新增病程当中的疾病名称和诊断状态与接口请求中的diagnosis_state与诊断状态相互对应
  disease_id与疾病名称想对应

###数据校验
   1.新增病人到新增病程之后数据校验测试用例目录:case/work/workbench/queryCaseList.feature
   2.数据来源区分是否共享data_source:["0"]
```