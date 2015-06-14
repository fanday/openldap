#/bin/sh
/etc/rc.d/init.d/slapd start
ldapadd -Y EXTERNAL -H ldapi:/// -f /files/chrootpw.ldif
ldapmodify -Y EXTERNAL -H ldapi:/// -f /files/chdomain.ldif

#replace "admin" with your password
ldapadd -x -D cn=Manager,dc=server,dc=world -w admin -f /files/basedomain.ldif
