set Path=%PATH%;c:\laztoapk\downloads\apache-ant-1.10.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_151
cd c:\laztoapk\projects\project1\demos\GUI\AppListViewDemo\
call ant clean -Dtouchtest.enabled=true debug
if errorlevel 1 pause
