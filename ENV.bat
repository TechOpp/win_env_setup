echo WIN_ENV-3.0(23july2020)
@ECHO OFF

SET /P COLOR="Enter java version no. (type 0, 1, 2, ...):"

2>NUL CALL :CASE_%COLOR% 			# jump to :CASE_0, :CASE_1, ... etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE  # if label doesn't exist then ERRORLEVEL will be incress by 1 , hence condition true

ECHO Done.
EXIT /B

:CASE_0
  COLOR 0A
  set java_home=D:\Java\JDK\jdk0_32bit
  GOTO END_CASE
:CASE_1
  COLOR 1B
  set java_home=D:\Java\JDK\jdk1_32bit
  GOTO END_CASE
:CASE_2
  COLOR 4E
  set java_home=D:\Java\JDK\jdk2_32bit
  GOTO END_CASE
:CASE_3
  COLOR 5F
  set java_home=D:\Java\JDK\jdk3_32bit
  GOTO END_CASE
:CASE_4
  COLOR 4E
  set java_home=D:\Java\JDK\jdk4_32bit
  GOTO END_CASE
:CASE_5
  COLOR 5F
  set java_home=D:\Java\JDK\jdk5_32bit
  GOTO END_CASE
:CASE_6-32
  COLOR 4E
  set java_home=D:\Java\JDK\jdk6_32bit
  GOTO END_CASE
 :CASE_6
  COLOR 5F
  set java_home=D:\Java\JDK\jdk6_64bit
  GOTO END_CASE
:CASE_7
  COLOR 9D
  set java_home=D:\Java\JDK\jdk7_64bit
  GOTO END_CASE
:CASE_8
  COLOR 0A
  set java_home=D:\Java\JDK\jdk8_64bit
  GOTO END_CASE
:CASE_9
  COLOR 9E
  set java_home=D:\Java\JDK\jdk9_64bit
  GOTO END_CASE
:CASE_10
  COLOR A1
  set java_home=D:\Java\JDK\jdk10_64bit
  GOTO END_CASE
:CASE_11
  COLOR 0A
  set java_home=D:\Java\JDK\jdk11_64bit
  GOTO END_CASE
:CASE_12
  COLOR 0A
  set java_home=D:\Java\JDK\jdk12_64bit
  GOTO END_CASE
:CASE_13
  COLOR 1B
  set java_home=D:\Java\JDK\jdk13_64bit
  GOTO END_CASE
:DEFAULT_CASE
  cls
  ECHO JAVA %COLOR% does not available... Sorry Try another Version
  GOTO :EOF # return from CALL
:END_CASE
  set java_path=%java_home%\bin
 
  set common_path=c:\users\admin
  set window_path=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\MySQL\MySQL Utilities 1.3.6\;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x86;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x64;C:\Users\Admin\AppData\Local\Programs\Microsoft VS Code\bin
  set tools=D:\Java\apache-maven-3.2.5\bin;D:\Java\apache-ant-1.9.4\bin;D:\WORK\MinGW\bin;D:\WORK\win-exTOOLS\curl-7.68.0-win64-mingw\bin;D:\WORK\MinGW\git\cmd;D:\WORK\MinGW\gawk\bin;D:\WEB_SERVERS\php\ActivePHP;D:\WEB_SERVERS\php\ComposerSetup;D:\WORK\NASM;D:\WORK\win-exTOOLS;D:\WEB_SERVERS\OpenSSL-Win64\bin;D:\WEB_SERVERS\nodejs\Yarn\bin;D:\Java\dex2jar-2.0;D:\WEB_SERVERS\SQLite;D:\WEB_SERVERS\Redis;D:\WEB_SERVERS\python;D:\WORK\win-exTOOLS\ffmpeg
  set servers=D:\WEB_SERVERS\ApacheWebServer24\bin;D:\WEB_SERVERS\apache-tomcat-7.0.23\bin;D:\WEB_SERVERS\glassfish-4.1\bin;D:\WEB_SERVERS\jboss-as-7.1.1.Final\bin
 
  MAVEN_OPTS="-Xms256m -Xmx512m"
  set ANT_HOME=D:\Java\apache-ant-1.9.4\
  set OPENSSL_CONF=D:\WEB_SERVERS\OpenSSL-Win64\bin\openssl.cfg
  set NODE_PATH=D:\WEB_SERVERS\nodejs\ActiveNode;D:\WEB_SERVERS\nodejs\npm-global-repo
 
  set classpath=.
  set default_classpath=D:\WORK\JavaPractics;D:\Java\Project Drive\running project
 
  set jar1=;D:\Java\LIB\C\
  set default_jar=%jar1%servlet-api.jar%jar1%mysql.jar%jar1%ojdbc6.jar%jar1%json-20171018.jar%jar%json-lib-2.4-jdk15.jar
 
  set jvm_mon=;D:\Java\lib\R\
  set jvm_state=%jvm_mon%basic.jar%jvm_mon%configurepolicy.jar%jvm_mon%jvmps.jar%jvm_mon%jvmsnap.jar%jvm_mon%jvmstat.jar%jvm_mon%jvmstat_graph.jar%jvm_mon%jvmstat_util.jar%jvm_mon%perf.jar%jvm_mon%perfagent.jar%jvm_mon%perfagentstubs.jar%jvm_mon%perfdata.jar%jvm_mon%visualgc.jar
 
  set spr=;D:\Java\LIB\S\
  set spring=%spr%com.springsource.antlr-2.7.7.jar%spr%com.springsource.edu.oswego.cs.dl.util.concurrent-1.3.4.jar%spr%com.springsource.javassist-3.3.0.ga.jar%spr%com.springsource.javax.activation-1.1.0.jar%spr%com.springsource.javax.annotation-1.0.0.jar%spr%com.springsource.javax.inject-1.0.0.jar%spr%com.springsource.javax.mail-1.4.0.jar%spr%com.springsource.javax.persistence-1.0.0.jar%spr%com.springsource.junit-3.8.2.jar%spr%com.springsource.net.sf.cglib-2.2.0.jar%spr%com.springsource.org.aopalliance-1.0.0.jar%spr%com.springsource.org.apache.commons.beanutils-1.8.0.jar%spr%com.springsource.org.apache.commons.collections-3.2.1.jar%spr%com.springsource.org.apache.commons.digester-1.8.1.jar%spr%com.springsource.org.apache.commons.discovery-0.4.0.jar%spr%com.springsource.org.apache.commons.fileupload-1.2.0.jar%spr%com.springsource.org.apache.commons.io-1.4.0.jar%spr%com.springsource.org.apache.commons.lang-2.1.0.jar%spr%com.springsource.org.apache.commons.pool-1.5.3.jar%spr%com.springsource.org.apache.log4j-1.2.15.jar%spr%com.springsource.org.apache.oro-2.0.8.jar%spr%com.springsource.org.apache.taglibs.standard-1.1.2.jar%spr%com.springsource.org.apache.tiles.core-2.1.2.osgi.jar%spr%com.springsource.org.apache.tiles.jsp-2.1.2.jar%spr%com.springsource.org.apache.tiles.servlet-2.1.2.jar%spr%com.springsource.org.apache.tiles-2.1.2.osgi.jar%spr%com.springsource.org.apache.xerces-2.8.1.jar%spr%com.springsource.org.apache.xml.resolver-1.2.0.jar%spr%com.springsource.org.apache.xmlcommons-1.3.3.jar%spr%com.springsource.org.aspectj.tools-1.6.6.RELEASE.jar%spr%com.springsource.org.aspectj.weaver-1.6.8.RELEASE.jar%spr%com.springsource.org.dom4j-1.6.1.jar%spr%com.springsource.org.hibernate.annotations.common-3.3.0.ga.jar%spr%com.springsource.org.hibernate.annotations-3.4.0.GA.jar%spr%com.springsource.org.hibernate.ejb-3.4.0.GA.jar%spr%com.springsource.org.hibernate-3.3.1.GA.jar%spr%com.springsource.org.objectweb.asm.attrs-1.5.3.jar%spr%com.springsource.org.objectweb.asm.commons-3.1.0.jar%spr%com.springsource.org.objectweb.asm.tree-3.1.0.jar%spr%com.springsource.org.objectweb.asm.util-2.2.3.jar%spr%com.springsource.org.objectweb.asm-3.1.0.jar%spr%com.springsource.util.common-2.0.0.RELEASE.jar%spr%com.springsource.util.math-2.0.0.RELEASE.jar%spr%com.springsource.util.osgi-2.0.0.RELEASE.jar%spr%commons-logging.jar%spr%hibernate-entitymanager.jar%spr%jboss-archive-browsing.jar%spr%jboss-j2ee.jar%spr%jcs-1.3.jar%spr%ldapbp-1.0.jar%spr%ognl-2.6.9.jar%spr%org.osgi.core-4.1.0.jar%spr%org.springframework.aop-3.0.1.RELEASE-A.jar%spr%org.springframework.asm-3.0.1.RELEASE-A.jar%spr%org.springframework.aspects-3.0.1.RELEASE-A.jar%spr%org.springframework.beans-3.0.1.RELEASE-A.jar%spr%org.springframework.binding-2.0.8.RELEASE.jar%spr%org.springframework.context.support-3.0.1.RELEASE-A.jar%spr%org.springframework.context-3.0.1.RELEASE-A.jar%spr%org.springframework.core-3.0.1.RELEASE-A.jar%spr%org.springframework.expression-3.0.1.RELEASE-A.jar%spr%org.springframework.instrument.tomcat-3.0.1.RELEASE-A.jar%spr%org.springframework.instrument-3.0.1.RELEASE-A.jar%spr%org.springframework.jdbc-3.0.1.RELEASE-A.jar%spr%org.springframework.js-2.0.8.RELEASE.jar%spr%org.springframework.orm-3.0.1.RELEASE-A.jar%spr%org.springframework.oxm-3.0.1.RELEASE-A.jar%spr%org.springframework.test-3.0.1.RELEASE-A.jar%spr%org.springframework.transaction-3.0.1.RELEASE-A.jar%spr%org.springframework.web.portlet-3.0.1.RELEASE-A.jar%spr%org.springframework.web.servlet-3.0.1.RELEASE-A.jar%spr%org.springframework.web-3.0.1.RELEASE-A.jar%spr%org.springframework.webflow-2.0.8.RELEASE.jar%spr%slf4j-api-1.5.11.jar%spr%slf4j-jdk14-1.5.11.jar%spr%spring-ldap-1.3.0.RELEASE-all.jar%spr%spring-ldap-1.3.0.RELEASE-sources.jar%spr%spring-modules-cache.jar%spr%sqljdbc.jar
 
  set hib=;D:\Java\LIB\H\
  set hibernate=%hib%antlr-2.7.7.jar%hib%dom4j-1.6.1.jar%hib%hibernate-commons-annotations-4.0.1.Final.jar%hib%hibernate-core-4.1.8.Final.jar%hib%hibernate-jpa-2.0-api-1.0.1.Final.jar%hib%javassist-3.15.0-GA.jar%hib%jboss-logging-3.1.0.GA.jar%hib%jboss-transaction-api_1.1_spec-1.0.0.Final.jar%hib%ojdbc6.jar
 
  set jme=;D:\Java\LIB\M\
  set jme_lib=%jme%cldc_1.8.jar%jme%configuration_1.0.jar%jme%device-io_1.0.jar%jme%device-io_1.1.jar%jme%device-io_1.1_adc.jar%jme%device-io_1.1_atcmd.jar%jme%device-io_1.1_counter.jar%jme%device-io_1.1_dac.jar%jme%device-io_1.1_generic.jar%jme%device-io_1.1_gpio.jar%jme%device-io_1.1_i2cbus.jar%jme%device-io_1.1_mmio.jar%jme%device-io_1.1_modem.jar%jme%device-io_1.1_pwm.jar%jme%device-io_1.1_spibus.jar%jme%device-io_1.1_uart.jar%jme%device-io_1.1_watchdog.jar%jme%gcf_1.8.jar%jme%httpclient_1.1.jar%jme%json_1.0.jar%jme%jsr75_1.0-fc.jar%jme%jsr120_1.1.jar%jme%jsr172_1.0.jar%jme%jsr177_1.0-apdu.jar%jme%jsr177_1.0-crypto.jar%jme%jsr179_1.0.jar%jme%jsr280_1.0.jar%jme%luikey-javadriver.jar%jme%meep_8.0.jar%jme%meep_8.0-cellular.jar%jme%meep_8.0-event.jar%jme%meep_8.0-io.jar%jme%meep_8.0-key.jar%jme%meep_8.0-lui.jar%jme%meep_8.0-media.jar%jme%meep_8.0-power.jar%jme%meep_8.0-rms.jar%jme%meep_8.0-swm.jar%jme%oauth2_1.0.jar%jme%runtime_update_1.0.jar%jme%satsa_extensions_api.jar%jme%ssl_extensions_api.jar%jme%compiler\me_plugin.jar%jme%ext\embedded-support-api.jar%jme%ext\security_api.jar
  
  set sel=;D:\Java\LIB\SE\
  set selenium_lib=%sel%byte-buddy-1.9.12.jar%sel%commons-exec-1.3.jar%sel%failureaccess-1.0.1.jar%sel%guava-27.1-jre.jar%sel%javax.servlet-api-3.1.0.jar%sel%jcip-annotations-1.0.jar%sel%jcommander-1.72.jar%sel%jeromq-0.5.1.jar%sel%jetty-lib-build-info.jar%sel%jnacl-1.0.0.jar%sel%listenablefuture-1.0.jar%sel%module-info.jar%sel%moved-bundle.jar%sel%okhttp-3.14.0.jar%sel%okio-1.17.3.jar%sel%opentracing-api-0.33.0.jar%sel%opentracing-noop-0.33.0.jar%sel%opentracing-tracerresolver-0.1.7.jar%sel%opentracing-util-0.33.0.jar%sel%slf4j-api-1.7.25.jar%sel%snakeyaml-1.24.jar
  
  set and=;D:\Java\LIB\A\
  set android=%and%android.jar%and%android-util-2.5.1.jar
 
  set ANDROID_HOME=F:\AndroidENV\AndroidSDK
  set CORDOVA=%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools;%ANDROID_HOME%\tools\bin
 
  set classpath=%classpath%;%default_classpath%%default_jar%%jvm_state%%spring%%hibernate%%jme_lib%%android%%selenium_lib%
 
  set CrossBrowserAppTest=D:\Java\Project Drive\running project\selenium-server-standalone-4.0.0-alpha-2\BrowserDrivers\geckodriver-v0.26.0-win64;D:\Java\Project Drive\running project\selenium-server-standalone-4.0.0-alpha-2\BrowserDrivers\chromedriver_win32
  set Clang=D:\WORK\TinyC;D:\WORK\BorlandCPP\Bin
 
  set jvmstat_home=D:\Java\jvmstat(jvm-monitor)
  set jme_path=D:\Java\JDK\jme8_32bit\bin
  set path=%common_path%;%window_path%;%java_path%;%tools%;%jvmstat_home%\bat;%servers%;%jme_path%;%NODE_PATH%;%CORDOVA%;%CrossBrowserAppTest%;%Clang%
  set JAVAME_SDK_HOME=D:\Java\JDK\jme8_32bit
 
  ECHO Now, Java %COLOR%, GCC, JME, JVM Monitor, Maven, Ant, php, nasm, Spring, Hibernate, openssl, Nodejs, python, SQLite, Redis, Cordova 4variants of C & CPP are availables...
 
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL