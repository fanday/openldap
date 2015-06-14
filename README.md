# Introduction #

dockerized openladp and phpldapadmin server

Openldap and phpldapadmin configuration is referred to:
http://www.server-world.info/en/note?os=CentOS_6&p=ldap&f=4

# Install and Start #

    $ docker build -t fanday/openldap .
    $ docker run -d -p 9389:389 -p 9000:80 --name ldap -t fanday/openldap
    $ docker ps
    CONTAINER ID        IMAGE                    COMMAND                CREATED             STATUS              PORTS                                                  NAMES
    3e9b6ccf087f        fanday/openldap:latest   "supervisord -c /etc   20 seconds ago      Up 17 seconds       636/tcp, 0.0.0.0:9000->80/tcp, 0.0.0.0:9389->389/tcp   ldap

## Login phpldapadmin with manager##

open http://localhost:9000/ldapadmin

Login DN:
*cn=Manager,dc=server,dc=world*

Password:
*admin*

## License ##

