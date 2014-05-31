# JDBC Connection Settings
export JAVA_OPTS="$JAVA_OPTS -DJDBC_DRIVER='com.mysql.jdbc.Driver'"
export JAVA_OPTS="$JAVA_OPTS -DJDBC_URL='jdbc:mysql://localhost:3306/activiti?autoReconnect=true'"
export JAVA_OPTS="$JAVA_OPTS -DJDBC_USERNAME='activiti'"
export JAVA_OPTS="$JAVA_OPTS -DJDBC_PASSWORD='JEnVQCrsAUTQ'"

# LDAP Connection Settings
export JAVA_OPTS="$JAVA_OPTS -DLDAP_URL='ldaps://127.0.0.1'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_PORT='636'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_USER_DN='CN=service_activiti_ldap,OU=service_users,DC=mana,DC=com'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_USER_PASSWORD='XasVCrAsmJJK'"

# LDAP Query Settings
export JAVA_OPTS="$JAVA_OPTS -DLDAP_BASE_DN='DC=mana,DC=com'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_QUERY_USER_BY_UID='(&(objectClass=user)(sAMAccountName={0}))'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_QUERY_USER_BY_CN='(&(objectClass=user)(|({0}=*{1}*)({2}=*{3}*)))'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_QUERY_GROUP='(&(objectClass=group)(member={0}))'"

# LDAP Attribute Settings
export JAVA_OPTS="$JAVA_OPTS -DLDAP_ATTR_UID='sAMAccountName'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_ATTR_GIVENNAME='givenName'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_ATTR_SURNAME='sn'"

export JAVA_OPTS="$JAVA_OPTS -DLDAP_ATTR_GROUP_ID='cn'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_ATTR_GROUP_NAME='cn'"

# LDAP Groups Settings
export JAVA_OPTS="$JAVA_OPTS -DLDAP_GROUP_ADMIN_1='activiti_admin'"
export JAVA_OPTS="$JAVA_OPTS -DLDAP_GROUP_USER_1='activiti_users'"