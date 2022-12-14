@echo off
chcp 65001
:begin


set input1=
set /p input1=请输入要号数量：
set input=
set /p input=请输入要号的样品编号：

set sql="update Article set Title ='固定的标题11' where id in('%input%');select top(%input1%) * from article where id in('%input%')"
sqlcmd -Q %sql% -d "newtest" -e

echo 按任意键继续

pause

goto begin