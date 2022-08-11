@chcp 65001
@echo off
::年年年年/月月/日日
@set today=%date:~0,10%
::年月日不要/
@set today=%today:/=%
:: 只要年月
@set ym=%DATE:~0,4%%DATE:~5,2%
echo %ym%
dir C:\Users\Administrator\Desktop\computer\log2\ | find "%today%"
@echo 出现%errorlevel%条错误
if %errorlevel% ==0 goto ok
:ok
echo 没找到文件夹
echo 正在生成中..
md C:\Users\Administrator\Desktop\%today%
echo 生成完毕
echo 由计划任务启动\n hello loading start ，datetime:%date%%time%>C:\Users\Administrator\Desktop\%today%\%today%.txt

echo 日志生成完毕
pause
