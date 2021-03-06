#############################################################################
# DECOMAP / NAGIOS MAPPING CONFIGURATION									#
#############################################################################
# This is the configuration file for the mapping of meta:accessrequest 	 	#
# based ldap modules. For information on each entry see the commentary.	#
#############################################################################



# minimum time to live for garbage objects in seconds
# Login-Failure access-requests are going to be deleted after the given amount of time
# fallback/default: 0
garbagecollector.mttl=40

# ldap server url
application.ldap.url=ldap://10.10.100.31:389/dc=decoit,dc=de

# Authentication type of the ldap server
# none, simple or strong
application.ldap.auth=simple

# ldap login username
application.ldap.username=cn=admin,dc=decoit,dc=de

# ldap login password
application.ldap.password=password

# ldap attribute which represents the role of a user
application.ldap.attribute=ou

# search request to find the role attribute
application.ldap.search=(ou=*)