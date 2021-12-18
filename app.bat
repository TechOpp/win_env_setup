@ECHO OFF
echo "0	WebCam				compiled on java 7"
echo "1	Downloader			compiled on java 7"
echo "2	OLBResSys			compiled on java 7"
echo "3	hospital			compiled on java 6"
echo "4	jd-gui				compiled on java 8"
echo "4a	Bytecode-Viewer-2		compiled on java 8"
echo "5	Musical equipment		compiled on java 6"
echo "6	selenium-server			compiled on java 8"
echo "7	ipscan				compiled on java 8"
echo "8	logisim-win			compiled on java 8"
echo "9	DS: weka study lab		compiled on java 8"

echo "10a	CodePointIm			from jdk 5 to 6-32"
echo "10b	FileChooserDemo			From jdk 2 to 6-32"
echo "10c	Font2DTest			from jdk 3 to 6-32"
echo "10d	JAVA2D 				from jdk 2 to 6-32"
echo "10e	Laffy				from jdk 6-32 only"
echo "10f	MetalWork 			from jdk 2 to 6-32"
echo "10g	NotePad 			from jdk 2 to 6-32"
echo "10h	SimpleTree			from jdk 2 to 6-32"
echo "10i	Stylepad  			from jdk 2 to 6-32"
echo "10j	Swing Applet			from jdk 2 to 6-32"
echo "10k	Swing set2			from jdk 2 to 6-32"
echo "10l	Swing set3 			from jdk 6-32 only"
echo "10m	Table  				from jdk 2 to 6-32"
echo "10n	DB Demo  			from jdk 2 to 3"
echo "10o	Simple  			from jdk 2 to 3"

echo "For JVM monotoring managemetn first of all a java application should be run on a certain host:port by using JMX(Java Managment Extensions) Framework"
echo "JVMstat upto JDK 4,Demo management from jdk 5 to 6, JMC from jdk 7 to current used for monitoring JVM localy or Remotly"
echo "11	Start a application to monotoring from jdk 5 to 6-32 using JMX againt"
echo "11a	Monitor FullThreadDump "
echo "11b	JTop monitor "
echo "11c	MemoryMonitor "
echo "11d	VerboseGC "

echo " "
echo "12	Fish app from book on jdk 8 "
echo "13	tenis game  from book on jdk 8 "
echo "14	application from book on jdk 8 "
echo "15	Drawing app from book on jdk 8 "
echo "16	Robotic app from book on jdk 8 "
echo "17	x86 Family Assembler		compiled on jdk 8"

SET /P COLOR="Enter Application No. (type 0, 1, 2, ...):"
cls

2>NUL CALL :CASE_%COLOR% 			# jump to :CASE_0, :CASE_1, ... etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE  # if label doesn't exist then ERRORLEVEL will be incress by 1 , hence condition true

ECHO Done.
EXIT /B

:CASE_0
	echo "A camera application run on java 7"
  java -jar "D:\java\Project Drive\running project\MyWebCam.jar"
  GOTO END_CASE
:CASE_1
	echo "A downloader app need java 7"
  java -jar "D:\java\Project Drive\running project\MyDownloader.jar"
  GOTO END_CASE
:CASE_2
	echo "A registry system run on java 7"
  java -jar "D:\java\Project Drive\running project\OLBResSys.jar"
  GOTO END_CASE
:CASE_3
	echo "A hospital application run on java 6"
  java -jar "D:\java\Project Drive\running project\hospital\hospital 1.33.jar"
  GOTO END_CASE
:CASE_4
	echo "A java decompiler run on java 8"
  java -jar "D:\java\Project Drive\running project\jd-gui-1.6.2.jar"
  GOTO END_CASE
:CASE_4a
	echo "A java decompiler run on java 8"
  java -jar "D:\Java\Project Drive\running project\Bytecode-Viewer-2.9.15.jar"
  GOTO END_CASE  
:CASE_5
	echo "A musical note writer app run on minimun java 6"
  java -jar "E:\SoftWare\mySoftware\Musical Insturment\ScoreDate-3.2( Music notes creator java app)\ScoreDate-3.2.jar"
  GOTO END_CASE
:CASE_6
	echo "Run selenium-server server need java 8"
  java -jar "D:\Java\Project Drive\running project\selenium-server-standalone-4.0.0-alpha-2\selenium-server-4.0.0-alpha-6.jar" standalone --port 1234
  GOTO END_CASE
:CASE_7
	echo "A port scanner app run on java 8"
  javaw -jar "D:\Java\Project Drive\running project\ipscan.exe"
  GOTO END_CASE
:CASE_8
	echo "Logisim is a logic circute creator app run on java 5 but well on java 8"
  javaw -jar "D:\Java\Project Drive\running project\logisim-win-2.7.1.exe"
  GOTO END_CASE
:CASE_9
	echo "weka is study app run on java 8"
  java -jar "D:\Java\Project Drive\running project\Weka-3-8-4\weka.jar"
  GOTO END_CASE
  
rem JDK examples ==============================================================  
:CASE_10a
rem This will not run directly:  java -jar %JAVA_HOME%\demo\jfc\CodePointIM\CodePointIM.jar
  %JAVA_HOME%\demo\jfc\CodePointIM\readme.html
  GOTO END_CASE
:CASE_10b
  java -jar %JAVA_HOME%\demo\jfc\FileChooserDemo\FileChooserDemo.jar
  GOTO END_CASE
:CASE_10c
  java -jar %JAVA_HOME%\demo\jfc\Font2DTest\Font2DTest.jar
  GOTO END_CASE
:CASE_10d
  java -jar %JAVA_HOME%\demo\jfc\Java2D\Java2Demo.jar	
  GOTO END_CASE
:CASE_10e
  D:\JAVA\JDK\jdk6_32bit\demo\jfc\Laffy\readme.html	
  GOTO END_CASE
:CASE_10f
  java -jar %JAVA_HOME%\demo\jfc\Metalworks\Metalworks.jar	
  GOTO END_CASE
:CASE_10g
  java -jar %JAVA_HOME%\demo\jfc\Notepad\Notepad.jar	
  GOTO END_CASE
:CASE_10h
  java -jar %JAVA_HOME%\demo\jfc\SampleTree\SampleTree.jar	
  GOTO END_CASE
:CASE_10i
  java -jar %JAVA_HOME%\demo\jfc\Stylepad\Stylepad.jar	
  GOTO END_CASE
:CASE_10j
rem we are moving in app location because appletviewer only search start from current location	
	set temppath=%cd%
	cd %JAVA_HOME%\demo\jfc\SwingApplet\		
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  appletviewer SwingApplet.html
  cd %temppath%
  GOTO END_CASE
:CASE_10k
  java -jar %JAVA_HOME%\demo\jfc\SwingSet2\SwingSet2.jar	
  GOTO END_CASE  
:CASE_10l
  %JAVA_HOME%\demo\jfc\SwingSet3\readme.html	
  GOTO END_CASE
:CASE_10m
  java -jar %JAVA_HOME%\demo\jfc\TableExample\TableExample.jar	
  GOTO END_CASE  
:CASE_10n
  echo "DataBase using JDBC-ODBC , so configure this"	
  GOTO END_CASE 
:CASE_10o
  java -jar %JAVA_HOME%\demo\jfc\SimpleExample\SimpleExample.jar	
  GOTO END_CASE  
  rem =========================== Monitor ========================================================
:CASE_11
	echo "Run an application for monotoring............."
	java  -Dcom.sun.management.jmxremote.host=127.0.0.1 -Dcom.sun.management.jmxremote.port=1090 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -jar %JDK_HOME%/demo/jfc/Java2D/Java2Demo.jar
  GOTO END_CASE 
:CASE_11a
	echo "JVM monitor app from java 5"
	java -jar %JDK_HOME%\demo\management\FullThreadDump\FullThreadDump.jar 127.0.0.1:1090
  GOTO END_CASE
:CASE_11b
	echo "JVM monitor app from java 5"
	java -jar %JAVA_HOME%\demo\management\JTop\JTop.jar 127.0.0.1:1090
  GOTO END_CASE
:CASE_11c
	echo "JVM monitor app from java 5"
	java -jar %JAVA_HOME%\demo\management\MemoryMonitor\MemoryMonitor.jar 127.0.0.1:1090
  GOTO END_CASE
:CASE_11d
	echo "JVM monitor app from java 5"
	java -jar %JAVA_HOME%\demo\management\VerboseGC\VerboseGC.jar 127.0.0.1:1090
  GOTO END_CASE
rem ================================================================================================
:CASE_12
	set temppath=%cd%
	cd D:\JAVA\Project Drive\java-book\ch01	
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  	java -cp "D:\JAVA\Project Drive\java-book\ch01" Aquarium
  cd %temppath%
  GOTO END_CASE
:CASE_13
	set temppath=%cd%
	cd D:\JAVA\Project Drive\java-book\ch02
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  	java -cp "D:\JAVA\Project Drive\java-book\ch02" Slapshot
  cd %temppath%
  GOTO END_CASE 
:CASE_14
	set temppath=%cd%
	cd D:\JAVA\Project Drive\java-book\ch03
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  	java -cp "D:\JAVA\Project Drive\java-book\ch03" Graphicizer 
  cd %temppath%
  GOTO END_CASE
:CASE_15
	set temppath=%cd%
	cd D:\JAVA\Project Drive\java-book\ch04
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  	java -cp "D:\JAVA\Project Drive\java-book\ch04" Painter 
  cd %temppath%
  GOTO END_CASE
 :CASE_16
	set temppath=%cd%
	cd D:\JAVA\Project Drive\java-book\ch07
rem Drive variable is set in ENV.bat	
	%DevDrive%									
  	java -cp "D:\JAVA\Project Drive\java-book\ch07" RobotProject
  cd %temppath% 
  GOTO END_CASE

:CASE_17
  SET /P input="Enter source file:"
  SET /P output="Enter object file:"
  java -jar "D:\JAVA\Project Drive\running project\x86-Assembler-In-JAVA\classes\assembler.jar"  %input% %output%
  GOTO END_CASE
  
  
  
:DEFAULT_CASE
  cls
  ECHO App %COLOR% does not available...OR Exception in application
  GOTO :EOF # return from CALL
:END_CASE


  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL