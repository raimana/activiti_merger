What is this
---
A Maven project which merges activiti-rest and the activiti-explorer webapps in a single webapp and deploys it into a Tomcat instance.

Tested with
---
* Ubuntu Server 14.04 LTS
* Maven 2
* Oracle JDK 1.7
* Activiti 5.15.1
* Tomcat 7.0.54
* mysql 5.5.33

How to use it
---
1. Set all properties according to your environment (see properties section below for more details).
2. From the root folder (*activiti_merger*) run: **mvn clean install**.
3. Untar the artifact (*activiti_merger/com.mana.activiti.merger.assembly/target/com.mana.activiti.merger.assembly-0.0.1-SNAPSHOT.tar.gz*).
4. Run the startup script (*apache-tomcat-7.0.54/bin/startup.sh*).
5. Check *http://localhost:8080/activiti/* to test the UI.
6. Check *http://localhost:8080/activiti/api/* to test the REST API.

Use another JDBC driver
---
1. Open *activiti_merger/com.mana.activiti.merger.assembly/pom.xml*.
2. Locate the dependency section and replace the mysql connector with your jdbc driver.
3. Locate the "generate-resources" phase and replace the mysql references (i.e. artifactId and groupId) with the ones for your JDBC driver.
4. Update your database properties in *activiti_merger/com.mana.activiti.merger.assembly/src/main/resources/override/tomcat/bin/appenv.sh* accordingly.
5. Run: **mvn clean install**

Additional notes
---
* This example uses an external LDAP server for authentication and authorization (using the default activiti-ldap).
  
* All the demo stuff have been removed.
  
* The REST services are mapped to */api/*. Haven't had any problem with that, yet. My understanding is that this is the old api and has been deprecated... I suppose one can probably just modify *org.activiti.explorer.filter.ExplorerFilter*...
  
* If all you want is the WAR without Tomcat then compress the *activiti* folder in a WAR and that's it...
  
* And I know it's obvious but just in case, $JAVA_HOME must be set.

#####################
#ACTIVITI PROPERTIES#
#####################
*Properties located in activiti_merger/com.mana.activiti.merger.assembly/src/main/resources/override/tomcat/bin/appenv.sh"*
  
Activiti Database Properties 
---
- JDBC_DRIVER
- JDBC_URL
- JDBC_USERNAME
- JDBC_PASSWORD
  
Activiti LDAP Properties
---
- LDAP_URL
- LDAP_PORT
- LDAP_BASE_DN
- LDAP_USER_DN
- LDAP_USER_PASSWORD
- LDAP_QUERY_USER_BY_UID
- LDAP_QUERY_USER_BY_CN
- LDAP_QUERY_GROUP
- LDAP_ATTR_UID
- LDAP_ATTR_GIVENNAME
- LDAP_ATTR_SURNAME
- LDAP_ATTR_GROUP_ID
- LDAP_ATTR_GROUP_NAME
- LDAP_GROUP_ADMIN_1
- LDAP_GROUP_USER_1
