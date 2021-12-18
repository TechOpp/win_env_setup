@ECHO OFF
 rem WIN_ENV-3.0(27Dec2020)
 rem For Installation put this file in home directory and home directory has to be set in hard-coded path environment variable
SET DevDrive=D:
set basic=no
SET /P version="Enter java version no. (type 0, 1, 2, ...):"

2>NUL CALL :CASE_%version% 			# jump to :CASE_0, :CASE_1, ... etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE  # if label doesn't exist then ERRORLEVEL will be incress by 1 , hence condition true

ECHO :::::::::::::::::::::::::::::::::::::::::::
ECHO ::  Contact Me: https://techopp.web.app  ::
ECHO :::::::::::::::::::::::::::::::::::::::::::

EXIT /B

:CASE_0
  COLOR 0A
  set java_home=%DevDrive%\Java\JDK\jdk0_32bit
rem setting basic variable is required due to problem with classpath of "jme_lib + selenium_lib + android" for old age java only
  set basic=yes
  GOTO END_CASE
:CASE_1
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk1_32bit
  set basic=yes
  GOTO END_CASE
:CASE_2
  COLOR 4E
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk2_32bit
  set basic=yes
  GOTO END_CASE
:CASE_3
  COLOR 5F
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk3_32bit
  GOTO END_CASE
:CASE_4
  COLOR 4E
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk4_32bit
  GOTO END_CASE
:CASE_5
  COLOR 5F
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk5_32bit
  GOTO END_CASE
:CASE_6-32
  COLOR 4E
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk6_32bit
  GOTO END_CASE
 :CASE_6
  COLOR 5F
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk6_64bit
  GOTO END_CASE
:CASE_7
  COLOR 9D
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk7_64bit
  GOTO END_CASE
:CASE_8
  COLOR 0A
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk8_64bit
  GOTO END_CASE
:CASE_9
  COLOR 9E
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk9_64bit
  GOTO END_CASE
:CASE_10
  COLOR A1
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk10_64bit
  GOTO END_CASE
:CASE_11
  COLOR 0A
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk11_64bit
  GOTO END_CASE
:CASE_12
  COLOR 0A
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk12_64bit
  GOTO END_CASE
:CASE_13
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk13_64bit
  GOTO END_CASE
:CASE_14
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk14_64bit
  GOTO END_CASE
:CASE_15
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk15_64bit
  GOTO END_CASE
:CASE_16
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk16_64bit
  GOTO END_CASE
:CASE_17
  COLOR 1B
  set JAVA_HOME=%DevDrive%\Java\JDK\jdk17_64bit
  GOTO END_CASE
:DEFAULT_CASE
  cls
  ECHO JAVA %version% does not available... Sorry Try another Version
  GOTO :EOF # return from CALL
:END_CASE
 rem JAVA_HOME needed by java and JDK_HOME is needed by many other development environment.
  set jdk_home=%JAVA_HOME%
 rem JAVA_PATH is need by Operating System
  set JAVA_PATH=%JAVA_HOME%\bin

 rem On second run remaining part should not reset
	if not defined SunEnv (
					set SunEnv=TechOpp "sunnykr.bit@outlook.com"
					title=TechOpp Development Environment V3.0
					rem $p has value current working directory, $G has value of prompt symbol
					rem set PROMPT=$P$G	//default prompt
					set PROMPT=%USERNAME%@[TechOpp $P]#
				) else (
					echo Now JAVA %version% is Activated
					goto path
				)

 rem This is the configuration for AWS-cli in python
  set AWS_CONFIG_FILE=%DevDrive%\WEB_SERVERS\PyTHON\WORKSPACE\AWS_CUI_Config\config.ini
 rem This key needed by Firebase CLI to authenticate and when change the key use new terminal
  set FIREBASE_TOKEN=1//0gt3nZbZNBkrRCgYIARAAGBASNwF-L9Ir10o8ci5KqOuv5_8E76LOIUIIOTrQ9sIwVwxqKbRje8s-Np7yWTE2MRRPMDB965O4sQM
 rem ENV var to get python path for google cloud SDK should not in path. this is only used by google cloud shell
  set CLOUDSDK_PYTHON=%PY_HOME%

  set default_path=%HOMEDRIVE%%HOMEPATH%;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\;c:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x86;c:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x64;c:\Program Files (x86)\MySQL\MySQL Utilities 1.3.6\
  set tools=%DevDrive%\Java\maven\bin;%DevDrive%\Java\ant\bin;%DevDrive%\JAVA\jmc-8.1.0\JDK Mission Control;%DevDrive%\WORK\NASM;%DevDrive%\WORK\MinGW\mingw64\bin;%DevDrive%\TOOLS\Git\cmd;%DevDrive%\TOOLS\gawk\bin;%DevDrive%\TOOLS\cURL\bin;%DevDrive%\TOOLS\ffmpeg;%DevDrive%\TOOLS\OpenSSL\bin;%DevDrive%\TOOLS\Common;%DevDrive%\TOOLS\openshift-CLI;%DevDrive%\TOOLS\putty;%DevDrive%\WEB_SERVERS\nodejs\Yarn\bin;%DevDrive%\Java\dex2jar-2.0;%DevDrive%\WEB_SERVERS\SQLite;%DevDrive%\WEB_SERVERS\Redis;%DevDrive%\WEB_SERVERS\memcached;%DevDrive%\TOOLS\mongodb\bin;%DevDrive%\TOOLS\cmake\bin;%DevDrive%\TOOLS\cdrtools;%DevDrive%\VERTUAL_OS\qemu;%DevDrive%\TOOLS\kubernete-CLI
  set servers=%DevDrive%\WEB_SERVERS\ApacheWebServer24\bin;%DevDrive%\WEB_SERVERS\apache-tomcat-7.0.23\bin;%DevDrive%\WEB_SERVERS\glassfish-4.1\bin;%DevDrive%\WEB_SERVERS\jboss-as-7.1.1.Final\bin
  set IDE=%DevDrive%\VSCodeIDE\bin;C:\Program Files\DecSoft\AppBuilder

  MAVEN_OPTS="-Xms256m -Xmx512m"
  set ANT_HOME=%DevDrive%\Java\ant\
  set OPENSSL_CONF=%DevDrive%\TOOLS\OpenSSL\bin\openssl.cfg

  set NODE_PATH=%DevDrive%\WEB_SERVERS\nodejs\ActiveNode;%DevDrive%\WEB_SERVERS\nodejs\npm-global-repo
  set PHP_PATH=%DevDrive%\WEB_SERVERS\php\ActivePHP;%DevDrive%\WEB_SERVERS\PHP\ActivePHP\ext;%DevDrive%\WEB_SERVERS\php\ComposerSetup
  set PY_HOME=%DevDrive%\WEB_SERVERS\python\ActivePython
 rem PYTHONPATH env var is for looking python module path 
  set PYTHONHOME=%PY_HOME%
  set PYTHONPATH=%PY_HOME%\Scripts;%PY_HOME%
  set Clang=%DevDrive%\WORK\TinyC;%DevDrive%\WORK\BorlandCPP\Bin
  set ruby=%DevDrive%\WEB_SERVERS\Ruby\ActiveRuby\bin
  set RLang=%DevDrive%\WEB_SERVERS\DSci-RLan\ActiveR\bin
  set GOPATH=%DevDrive%\WEB_SERVERS\Go\ActiveGo
  set perl=%DevDrive%\WEB_SERVERS\Perl\ActivePerl
	set TERM=
	set PERL_JSON_BACKEND=
	set PERL_YAML_BACKEND=
	set PERL5LIB=
	set PERL5OPT=
	set PERL_MM_OPT=
	set PERL_MB_OPT=
  set perl_path=%perl%\perl\site\bin;%perl%\perl\bin;%perl%\c\bin

  
  set default_classpath=%DevDrive%\Java\ToDo_JAVA;%DevDrive%\Java\Project Drive\running project
 rem C stands for common library for java
  set jar1=;%DevDrive%\Java\LIB\C\
  set default_jar=%jar1%servlet-api.jar%jar1%mysql.jar%jar1%ojdbc6.jar%jar1%json-20171018.jar%jar1%json-lib-2.4-jdk15.jar
  
 rem R stands for classes of jvm-monitor virtual machine (RunTime) monitoring 
  set jvm_mon=;%DevDrive%\Java\lib\R\
  set jvm_state=%jvm_mon%basic.jar%jvm_mon%configurepolicy.jar%jvm_mon%jvmps.jar%jvm_mon%jvmsnap.jar%jvm_mon%jvmstat.jar%jvm_mon%jvmstat_graph.jar%jvm_mon%jvmstat_util.jar%jvm_mon%perf.jar%jvm_mon%perfagent.jar%jvm_mon%perfagentstubs.jar%jvm_mon%perfdata.jar%jvm_mon%visualgc.jar
  set jvmstat_home=%DevDrive%\Java\jvmstat(jvm-monitor)
  
 rem S stands for Spring library. this is spring 3  
 rem set spr=;%DevDrive%\Java\LIB\S\
 rem set spring=%spr%com.springsource.antlr-2.7.7.jar%spr%com.springsource.edu.oswego.cs.dl.util.concurrent-1.3.4.jar%spr%com.springsource.javassist-3.3.0.ga.jar%spr%com.springsource.javax.activation-1.1.0.jar%spr%com.springsource.javax.annotation-1.0.0.jar%spr%com.springsource.javax.inject-1.0.0.jar%spr%com.springsource.javax.mail-1.4.0.jar%spr%com.springsource.javax.persistence-1.0.0.jar%spr%com.springsource.junit-3.8.2.jar%spr%com.springsource.net.sf.cglib-2.2.0.jar%spr%com.springsource.org.aopalliance-1.0.0.jar%spr%com.springsource.org.apache.commons.beanutils-1.8.0.jar%spr%com.springsource.org.apache.commons.collections-3.2.1.jar%spr%com.springsource.org.apache.commons.digester-1.8.1.jar%spr%com.springsource.org.apache.commons.discovery-0.4.0.jar%spr%com.springsource.org.apache.commons.fileupload-1.2.0.jar%spr%com.springsource.org.apache.commons.io-1.4.0.jar%spr%com.springsource.org.apache.commons.lang-2.1.0.jar%spr%com.springsource.org.apache.commons.pool-1.5.3.jar%spr%com.springsource.org.apache.log4j-1.2.15.jar%spr%com.springsource.org.apache.oro-2.0.8.jar%spr%com.springsource.org.apache.taglibs.standard-1.1.2.jar%spr%com.springsource.org.apache.tiles.core-2.1.2.osgi.jar%spr%com.springsource.org.apache.tiles.jsp-2.1.2.jar%spr%com.springsource.org.apache.tiles.servlet-2.1.2.jar%spr%com.springsource.org.apache.tiles-2.1.2.osgi.jar%spr%com.springsource.org.apache.xerces-2.8.1.jar%spr%com.springsource.org.apache.xml.resolver-1.2.0.jar%spr%com.springsource.org.apache.xmlcommons-1.3.3.jar%spr%com.springsource.org.aspectj.tools-1.6.6.RELEASE.jar%spr%com.springsource.org.aspectj.weaver-1.6.8.RELEASE.jar%spr%com.springsource.org.dom4j-1.6.1.jar%spr%com.springsource.org.hibernate.annotations.common-3.3.0.ga.jar%spr%com.springsource.org.hibernate.annotations-3.4.0.GA.jar%spr%com.springsource.org.hibernate.ejb-3.4.0.GA.jar%spr%com.springsource.org.hibernate-3.3.1.GA.jar%spr%com.springsource.org.objectweb.asm.attrs-1.5.3.jar%spr%com.springsource.org.objectweb.asm.commons-3.1.0.jar%spr%com.springsource.org.objectweb.asm.tree-3.1.0.jar%spr%com.springsource.org.objectweb.asm.util-2.2.3.jar%spr%com.springsource.org.objectweb.asm-3.1.0.jar%spr%com.springsource.util.common-2.0.0.RELEASE.jar%spr%com.springsource.util.math-2.0.0.RELEASE.jar%spr%com.springsource.util.osgi-2.0.0.RELEASE.jar%spr%commons-logging.jar%spr%hibernate-entitymanager.jar%spr%jboss-archive-browsing.jar%spr%jboss-j2ee.jar%spr%jcs-1.3.jar%spr%ldapbp-1.0.jar%spr%ognl-2.6.9.jar%spr%org.osgi.core-4.1.0.jar%spr%org.springframework.aop-3.0.1.RELEASE-A.jar%spr%org.springframework.asm-3.0.1.RELEASE-A.jar%spr%org.springframework.aspects-3.0.1.RELEASE-A.jar%spr%org.springframework.beans-3.0.1.RELEASE-A.jar%spr%org.springframework.binding-2.0.8.RELEASE.jar%spr%org.springframework.context.support-3.0.1.RELEASE-A.jar%spr%org.springframework.context-3.0.1.RELEASE-A.jar%spr%org.springframework.core-3.0.1.RELEASE-A.jar%spr%org.springframework.expression-3.0.1.RELEASE-A.jar%spr%org.springframework.instrument.tomcat-3.0.1.RELEASE-A.jar%spr%org.springframework.instrument-3.0.1.RELEASE-A.jar%spr%org.springframework.jdbc-3.0.1.RELEASE-A.jar%spr%org.springframework.js-2.0.8.RELEASE.jar%spr%org.springframework.orm-3.0.1.RELEASE-A.jar%spr%org.springframework.oxm-3.0.1.RELEASE-A.jar%spr%org.springframework.test-3.0.1.RELEASE-A.jar%spr%org.springframework.transaction-3.0.1.RELEASE-A.jar%spr%org.springframework.web.portlet-3.0.1.RELEASE-A.jar%spr%org.springframework.web.servlet-3.0.1.RELEASE-A.jar%spr%org.springframework.web-3.0.1.RELEASE-A.jar%spr%org.springframework.webflow-2.0.8.RELEASE.jar%spr%slf4j-api-1.5.11.jar%spr%slf4j-jdk14-1.5.11.jar%spr%spring-ldap-1.3.0.RELEASE-all.jar%spr%spring-ldap-1.3.0.RELEASE-sources.jar%spr%spring-modules-cache.jar%spr%sqljdbc.jar
 rem This is Spring-5
  set spr=;%DevDrive%\Java\LIB\S5\
  set spring=%spr%spring-aop-5.2.9.RELEASE-javadoc.jar%spr%spring-aop-5.2.9.RELEASE-sources.jar%spr%spring-aop-5.2.9.RELEASE.jar%spr%spring-aspects-5.2.9.RELEASE-javadoc.jar%spr%spring-aspects-5.2.9.RELEASE-sources.jar%spr%spring-aspects-5.2.9.RELEASE.jar%spr%spring-beans-5.2.9.RELEASE-javadoc.jar%spr%spring-beans-5.2.9.RELEASE-sources.jar%spr%spring-beans-5.2.9.RELEASE.jar%spr%spring-context-5.2.9.RELEASE-javadoc.jar%spr%spring-context-5.2.9.RELEASE-sources.jar%spr%spring-context-5.2.9.RELEASE.jar%spr%spring-context-indexer-5.2.9.RELEASE-javadoc.jar%spr%spring-context-indexer-5.2.9.RELEASE-sources.jar%spr%spring-context-indexer-5.2.9.RELEASE.jar%spr%spring-context-support-5.2.9.RELEASE-javadoc.jar%spr%spring-context-support-5.2.9.RELEASE-sources.jar%spr%spring-context-support-5.2.9.RELEASE.jar%spr%spring-core-5.2.9.RELEASE-javadoc.jar%spr%spring-core-5.2.9.RELEASE-sources.jar%spr%spring-core-5.2.9.RELEASE.jar%spr%spring-expression-5.2.9.RELEASE-javadoc.jar%spr%spring-expression-5.2.9.RELEASE-sources.jar%spr%spring-expression-5.2.9.RELEASE.jar%spr%spring-instrument-5.2.9.RELEASE-javadoc.jar%spr%spring-instrument-5.2.9.RELEASE-sources.jar%spr%spring-instrument-5.2.9.RELEASE.jar%spr%spring-jcl-5.2.9.RELEASE-javadoc.jar%spr%spring-jcl-5.2.9.RELEASE-sources.jar%spr%spring-jcl-5.2.9.RELEASE.jar%spr%spring-jdbc-5.2.9.RELEASE-javadoc.jar%spr%spring-jdbc-5.2.9.RELEASE-sources.jar%spr%spring-jdbc-5.2.9.RELEASE.jar%spr%spring-jms-5.2.9.RELEASE-javadoc.jar%spr%spring-jms-5.2.9.RELEASE-sources.jar%spr%spring-jms-5.2.9.RELEASE.jar%spr%spring-messaging-5.2.9.RELEASE-javadoc.jar%spr%spring-messaging-5.2.9.RELEASE-sources.jar%spr%spring-messaging-5.2.9.RELEASE.jar%spr%spring-orm-5.2.9.RELEASE-javadoc.jar%spr%spring-orm-5.2.9.RELEASE-sources.jar%spr%spring-orm-5.2.9.RELEASE.jar%spr%spring-oxm-5.2.9.RELEASE-javadoc.jar%spr%spring-oxm-5.2.9.RELEASE-sources.jar%spr%spring-oxm-5.2.9.RELEASE.jar%spr%spring-test-5.2.9.RELEASE-javadoc.jar%spr%spring-test-5.2.9.RELEASE-sources.jar%spr%spring-test-5.2.9.RELEASE.jar%spr%spring-tx-5.2.9.RELEASE-javadoc.jar%spr%spring-tx-5.2.9.RELEASE-sources.jar%spr%spring-tx-5.2.9.RELEASE.jar%spr%spring-web-5.2.9.RELEASE-javadoc.jar%spr%spring-web-5.2.9.RELEASE-sources.jar%spr%spring-web-5.2.9.RELEASE.jar%spr%spring-webflux-5.2.9.RELEASE-javadoc.jar%spr%spring-webflux-5.2.9.RELEASE-sources.jar%spr%spring-webflux-5.2.9.RELEASE.jar%spr%spring-webmvc-5.2.9.RELEASE-javadoc.jar%spr%spring-webmvc-5.2.9.RELEASE-sources.jar%spr%spring-webmvc-5.2.9.RELEASE.jar%spr%spring-websocket-5.2.9.RELEASE-javadoc.jar%spr%spring-websocket-5.2.9.RELEASE-sources.jar%spr%spring-websocket-5.2.9.RELEASE.jar 
 rem H stands for hibernate library
  set hib=;%DevDrive%\Java\LIB\H\
  set hibernate=%hib%antlr-2.7.7.jar%hib%dom4j-1.6.1.jar%hib%hibernate-commons-annotations-4.0.1.Final.jar%hib%hibernate-core-4.1.8.Final.jar%hib%hibernate-jpa-2.0-api-1.0.1.Final.jar%hib%javassist-3.15.0-GA.jar%hib%jboss-logging-3.1.0.GA.jar%hib%jboss-transaction-api_1.1_spec-1.0.0.Final.jar%hib%ojdbc6.jar

 rem M stands for JAVA Micro edition library
  set jme=;%DevDrive%\Java\LIB\M\
  set jme_lib=%jme%cldc_1.8.jar%jme%configuration_1.0.jar%jme%device-io_1.0.jar%jme%device-io_1.1.jar%jme%device-io_1.1_adc.jar%jme%device-io_1.1_atcmd.jar%jme%device-io_1.1_counter.jar%jme%device-io_1.1_dac.jar%jme%device-io_1.1_generic.jar%jme%device-io_1.1_gpio.jar%jme%device-io_1.1_i2cbus.jar%jme%device-io_1.1_mmio.jar%jme%device-io_1.1_modem.jar%jme%device-io_1.1_pwm.jar%jme%device-io_1.1_spibus.jar%jme%device-io_1.1_uart.jar%jme%device-io_1.1_watchdog.jar%jme%gcf_1.8.jar%jme%httpclient_1.1.jar%jme%json_1.0.jar%jme%jsr75_1.0-fc.jar%jme%jsr120_1.1.jar%jme%jsr172_1.0.jar%jme%jsr177_1.0-apdu.jar%jme%jsr177_1.0-crypto.jar%jme%jsr179_1.0.jar%jme%jsr280_1.0.jar%jme%luikey-javadriver.jar%jme%meep_8.0.jar%jme%meep_8.0-cellular.jar%jme%meep_8.0-event.jar%jme%meep_8.0-io.jar%jme%meep_8.0-key.jar%jme%meep_8.0-lui.jar%jme%meep_8.0-media.jar%jme%meep_8.0-power.jar%jme%meep_8.0-rms.jar%jme%meep_8.0-swm.jar%jme%oauth2_1.0.jar%jme%runtime_update_1.0.jar%jme%satsa_extensions_api.jar%jme%ssl_extensions_api.jar%jme%compiler\me_plugin.jar%jme%ext\embedded-support-api.jar%jme%ext\security_api.jar
  set JAVAME_SDK_HOME=%DevDrive%\Java\JDK\jme8_32bit
  set jme_path=%JAVAME_SDK_HOME%\bin

  rem SE stands for Selenium server library 
  set sel=;%DevDrive%\Java\LIB\SE\
  set selenium_lib=%sel%byte-buddy-1.9.12.jar%sel%commons-exec-1.3.jar%sel%failureaccess-1.0.1.jar%sel%guava-27.1-jre.jar%sel%javax.servlet-api-3.1.0.jar%sel%jcip-annotations-1.0.jar%sel%jcommander-1.72.jar%sel%jeromq-0.5.1.jar%sel%jetty-lib-build-info.jar%sel%jnacl-1.0.0.jar%sel%listenablefuture-1.0.jar%sel%module-info.jar%sel%moved-bundle.jar%sel%okhttp-3.14.0.jar%sel%okio-1.17.3.jar%sel%opentracing-api-0.33.0.jar%sel%opentracing-noop-0.33.0.jar%sel%opentracing-tracerresolver-0.1.7.jar%sel%opentracing-util-0.33.0.jar%sel%slf4j-api-1.7.25.jar%sel%snakeyaml-1.24.jar
  set CrossBrowserAppTest=%DevDrive%\Java\Project Drive\running project\selenium-server-standalone-4.0.0-alpha-2\BrowserDrivers\geckodriver-v0.26.0-win64;%DevDrive%\Java\Project Drive\running project\selenium-server-standalone-4.0.0-alpha-2\BrowserDrivers\chromedriver_win32
  
  rem A stands for Android library. This is not fully android library 
  set and=;%DevDrive%\Java\LIB\A\
  set android=%and%android.jar%and%android-util-2.5.1.jar

 rem setting environment for building Hybrid android application using Gradle tool
  set ANDROID_HOME=F:\AndroidENV\AndroidSDK
  set ANDROID_SDK_ROOT=%ANDROID_HOME%
  set GRADLE_ROOT=C:\Users\Admin\.gradle\wrapper\dists\gradle-6.5-all\2oz4ud9k3tuxjg84bbf55q0tn\gradle-6.5
  set Hybrid=%ANDROID_HOME%\tools;%ANDROID_HOME%\tools\bin;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\emulator;%ANDROID_HOME%\build-tools\29.0.2;%GRADLE_ROOT%\bin

  rem deprecated classpath
rem NOTE: jme_lib + selenium_lib + android, these 3 library make jdk 0 to 2 not working when setting in classpath, So change classpath in default Vs. Adv classpath  
rem set classpath=%classpath%;%default_classpath%%default_jar%%jvm_state%%spring%%hibernate%%jme_lib%%selenium_lib%%android%




  ECHO Now, Java %version%, GCC, JME, JVM Monitor, Maven, Ant, MinGW64, Gradle, Selenium, php, nasm, Spring, Hibernate, openssl, Nodejs, python, Ruby, Putty, SQLite, Redis, Memcache, IONIC, Cordova, 4 variants of C, CPP are availables... rem '&' will ignore to printing remaining part of echo

  :path
rem An environment variable can only holds maximum 8192 length of value to a variable, and at current time the length of classpath variable for Advance is 7844, So there is only available length is 348 
  set classpath=.
  set classpath=%classpath%;%default_classpath%%default_jar%%jvm_state%
  set adv=%spring%%hibernate%%jme_lib%%selenium_lib%%android%
  
  if not "%basic%"=="yes"  set classpath=%classpath%%adv%
  
  if not "%SunEnv%"=="TechOpp"	set path=%default_path%;%java_path%;%tools%;%jvmstat_home%\bat;%servers%;%jme_path%;%NODE_PATH%;%PHP_PATH%;%PYTHONPATH%;%Clang%;%Hybrid%;%CrossBrowserAppTest%;%IDE%;%ruby%;%RLang%;%GOPATH%\bin;%perl_path%


  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL