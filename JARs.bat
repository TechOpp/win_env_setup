@ECHO OFF

 
  set jar1=;D:\Java\java_lib\
  set jar2=;D:\Java\jvmstat(jvm-monitor)\classes\
  set default_jar=D:\java\java_lib\servlet-api.jar%jar1%mysql.jar%jar1%ojdbc6.jar%jar2%basic.jar%jar2%configurepolicy.jar%jar2%jvmps.jar%jar2%jvmsnap.jar%jar2%jvmstat.jar%jar2%jvmstat_graph.jar%jar2%jvmstat_util.jar%jar2%perf.jar%jar2%perfagent.jar%jar2%perfagentstubs.jar%jar2%perfdata.jar%jar2%visualgc.jar

  set classpath=.
  set classpath=%classpath%;%default_classpath%;%default_jar%


SET /P COLOR="Enter Technology name. (type h for hibernate,s for spring, ...): "

2>NUL CALL :CASE_%COLOR% 			# jump to :CASE_0, :CASE_1, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE  # if label doesn't exist then ERRORLEVEL will be incress by 1 , hence condition true

ECHO Done.
EXIT /B

:CASE_h
  COLOR 3F
  set var=;D:\java\hibernate\
  set classpath=%classpath%%var%antlr-2.7.7.jar%var%dom4j-1.6.1.jar%var%hibernate-commons-annotations-4.0.1.Final.jar%var%hibernate-core-4.1.8.Final.jar%var%hibernate-jpa-2.0-api-1.0.1.Final.jar%var%javassist-3.15.0-GA.jar%var%jboss-logging-3.1.0.GA.jar%var%jboss-transaction-api_1.1_spec-1.0.0.Final.jar%var%ojdbc6.jar
  set hib=D:\java\hibernate\antlr-2.7.7.jar%var%dom4j-1.6.1.jar%var%hibernate-commons-annotations-4.0.1.Final.jar%var%hibernate-core-4.1.8.Final.jar%var%hibernate-jpa-2.0-api-1.0.1.Final.jar%var%javassist-3.15.0-GA.jar%var%jboss-logging-3.1.0.GA.jar%var%jboss-transaction-api_1.1_spec-1.0.0.Final.jar%var%ojdbc6.jar
  GOTO END_CASE

:CASE_s
  COLOR 5F
  set var=;D:\java\Spring 3.0\
  set classpath=%classpath%%var%com.springsource.antlr-2.7.7.jar%var%com.springsource.edu.oswego.cs.dl.util.concurrent-1.3.4.jar%var%com.springsource.javassist-3.3.0.ga.jar%var%com.springsource.javax.activation-1.1.0.jar%var%com.springsource.javax.annotation-1.0.0.jar%var%com.springsource.javax.inject-1.0.0.jar%var%com.springsource.javax.mail-1.4.0.jar%var%com.springsource.javax.persistence-1.0.0.jar%var%com.springsource.junit-3.8.2.jar%var%com.springsource.net.sf.cglib-2.2.0.jar%var%com.springsource.org.aopalliance-1.0.0.jar%var%com.springsource.org.apache.commons.beanutils-1.8.0.jar%var%com.springsource.org.apache.commons.collections-3.2.1.jar%var%com.springsource.org.apache.commons.digester-1.8.1.jar%var%com.springsource.org.apache.commons.discovery-0.4.0.jar%var%com.springsource.org.apache.commons.fileupload-1.2.0.jar%var%com.springsource.org.apache.commons.io-1.4.0.jar%var%com.springsource.org.apache.commons.lang-2.1.0.jar%var%com.springsource.org.apache.commons.pool-1.5.3.jar%var%com.springsource.org.apache.log4j-1.2.15.jar%var%com.springsource.org.apache.oro-2.0.8.jar%var%com.springsource.org.apache.taglibs.standard-1.1.2.jar%var%com.springsource.org.apache.tiles.core-2.1.2.osgi.jar%var%com.springsource.org.apache.tiles.jsp-2.1.2.jar%var%com.springsource.org.apache.tiles.servlet-2.1.2.jar%var%com.springsource.org.apache.tiles-2.1.2.osgi.jar%var%com.springsource.org.apache.xerces-2.8.1.jar%var%com.springsource.org.apache.xml.resolver-1.2.0.jar%var%com.springsource.org.apache.xmlcommons-1.3.3.jar%var%com.springsource.org.aspectj.tools-1.6.6.RELEASE.jar%var%com.springsource.org.aspectj.weaver-1.6.8.RELEASE.jar%var%com.springsource.org.dom4j-1.6.1.jar%var%com.springsource.org.hibernate.annotations.common-3.3.0.ga.jar%var%com.springsource.org.hibernate.annotations-3.4.0.GA.jar%var%com.springsource.org.hibernate.ejb-3.4.0.GA.jar%var%com.springsource.org.hibernate-3.3.1.GA.jar%var%com.springsource.org.objectweb.asm.attrs-1.5.3.jar%var%com.springsource.org.objectweb.asm.commons-3.1.0.jar%var%com.springsource.org.objectweb.asm.tree-3.1.0.jar%var%com.springsource.org.objectweb.asm.util-2.2.3.jar%var%com.springsource.org.objectweb.asm-3.1.0.jar%var%com.springsource.util.common-2.0.0.RELEASE.jar%var%com.springsource.util.math-2.0.0.RELEASE.jar%var%com.springsource.util.osgi-2.0.0.RELEASE.jar%var%commons-logging.jar%var%hibernate-entitymanager.jar%var%jboss-archive-browsing.jar%var%jboss-j2ee.jar%var%jcs-1.3.jar%var%ldapbp-1.0.jar%var%ognl-2.6.9.jar%var%org.osgi.core-4.1.0.jar%var%org.springframework.aop-3.0.1.RELEASE-A.jar%var%org.springframework.asm-3.0.1.RELEASE-A.jar%var%org.springframework.aspects-3.0.1.RELEASE-A.jar%var%org.springframework.beans-3.0.1.RELEASE-A.jar%var%org.springframework.binding-2.0.8.RELEASE.jar%var%org.springframework.context.support-3.0.1.RELEASE-A.jar%var%org.springframework.context-3.0.1.RELEASE-A.jar%var%org.springframework.core-3.0.1.RELEASE-A.jar%var%org.springframework.expression-3.0.1.RELEASE-A.jar%var%org.springframework.instrument.tomcat-3.0.1.RELEASE-A.jar%var%org.springframework.instrument-3.0.1.RELEASE-A.jar%var%org.springframework.jdbc-3.0.1.RELEASE-A.jar%var%org.springframework.js-2.0.8.RELEASE.jar%var%org.springframework.orm-3.0.1.RELEASE-A.jar%var%org.springframework.oxm-3.0.1.RELEASE-A.jar%var%org.springframework.test-3.0.1.RELEASE-A.jar%var%org.springframework.transaction-3.0.1.RELEASE-A.jar%var%org.springframework.web.portlet-3.0.1.RELEASE-A.jar%var%org.springframework.web.servlet-3.0.1.RELEASE-A.jar%var%org.springframework.web-3.0.1.RELEASE-A.jar%var%org.springframework.webflow-2.0.8.RELEASE.jar%var%slf4j-api-1.5.11.jar%var%slf4j-jdk14-1.5.11.jar%var%spring-ldap-1.3.0.RELEASE-all.jar%var%spring-ldap-1.3.0.RELEASE-sources.jar%var%spring-modules-cache.jar%var%sqljdbc.jar
  GOTO END_CASE
  
:DEFAULT_CASE
  cls
  ECHO %COLOR% Technology does not available... Sorry Try another Technology
  GOTO :EOF # return from CALL
:END_CASE 
  cls
  ECHO Now, %COLOR% is available...
 VER > NUL # reset ERRORLEVEL
 GOTO :EOF # return from CALL
 
 
 