@ECHO OFF
echo "0	WebCam				compiled on java 7"
echo "1	Downloader			compiled on java 7"
echo "2	OLBResSys			compiled on java 7"
echo "3	hospital			compiled on java 6"
echo "4	jd-gui				compiled on java 8"
echo "5	Musical equipment	compiled on java 6"
echo "6	selenium-server		compiled on java 8"
echo "7	ipscan				compiled on java 8"
echo "8	logisim-win			compiled on java 8"
echo "9	weka study lab		compiled on java 8"

echo "10a	Java2Demo		compiled on java 4"
echo "10b	FileChooserDemo	compiled on java 4"
echo "10c	Font2DTest		compiled on java 4"
echo "10d	Metalworks		compiled on java 4"
echo "10e	Notepad 		compiled on java 4"
echo "10f	SampleTree 		compiled on java 4"
echo "10g	Stylepad 		compiled on java 4"
echo "10h	SwingSet2 		compiled on java 4"
echo "10i	TableExample 	compiled on java 4"
echo "11	MemoryMonitor 	compiled on java 4"

SET /P COLOR="Enter Application No. (type 0, 1, 2, ...):"

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
:CASE_10a
	echo "java2Demo from java 4"
  java -jar %JAVA_HOME%\demo\jfc\Java2D\Java2Demo.jar
  GOTO END_CASE
:CASE_10b
	echo "File chooser Demo from java 4"
  java -jar %JAVA_HOME%\demo\jfc\FileChooserDemo\FileChooserDemo.jar
  GOTO END_CASE
:CASE_10c
	echo "Forn 2D test from java 4"
  java -jar %JAVA_HOME%\demo\jfc\Font2DTest\Font2DTest.jar
  GOTO END_CASE
:CASE_10d
	echo " metal work Demo from java 4"
  java -jar %JAVA_HOME%\demo\jfc\Metalworks\Metalworks.jar
  GOTO END_CASE
:CASE_10e
	echo "notepad Demo from java 4"
  java -jar %JAVA_HOME%\demo\jfc\Notepad\Notepad.jar
  GOTO END_CASE
:CASE_10f
	echo "Tree  from java 4"
  java -jar %JAVA_HOME%\demo\jfc\SampleTree\SampleTree.jar
  GOTO END_CASE
:CASE_10g
	echo "style pad from java 4"
  java -jar %JAVA_HOME%\demo\jfc\Stylepad\Stylepad.jar
  GOTO END_CASE
:CASE_10h
	echo "swing set from java 4"
  java -jar %JAVA_HOME%\demo\jfc\SwingSet2\SwingSet2.jar
  GOTO END_CASE  
:CASE_10i
	echo "Table exa from java 4"
  java -jar %JAVA_HOME%\demo\jfc\TableExample\TableExample.jar
  GOTO END_CASE  
:CASE_11
	echo "JVM monitor app from java 5"
	java -jar %JAVA_HOME%\demo\management\MemoryMonitor\MemoryMonitor.jar
  GOTO END_CASE   
:DEFAULT_CASE
  cls
  ECHO App %COLOR% does not available... Sorry Try another Version
  GOTO :EOF # return from CALL
:END_CASE


  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL