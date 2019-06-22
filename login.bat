@ECHO OFF


SET /P COLOR="Enter Server Name (type d for database, r for rhel6): "

2>NUL CALL :CASE_%COLOR% 			# jump to :CASE_0, :CASE_1, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE  # if label doesn't exist then ERRORLEVEL will be incress by 1 , hence condition true

ECHO Done.
EXIT /B

:CASE_d
  COLOR 4F
  sqlplus "hr/hr@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=192.168.1.2)(Port=1521))(CONNECT_DATA=(SID=xe)))"
  GOTO END_CASE
:CASE_r
  COLOR 5F	
  telnet 192.168.1.6	
  GOTO END_CASE

  
:DEFAULT_CASE
  cls
  ECHO %COLOR% is not a vailid option... Sorry Try another Version
  GOTO :EOF # return from CALL
:END_CASE 
  
 VER > NUL # reset ERRORLEVEL
 GOTO :EOF # return from CALL
 
   
 