###Tomcat Configuration
 
Requirements:
- All apps run on Apache Tomcat 8.5.X

Setup:
- Download and unpack Tomcat into appropriate server directory
- Copy certificates
- Define HTTPS connector in server.xml using copied certificates(example below)
- Define user for Jenkins in tomcat-users.xml with manager-script role

Startup
- Starting procedure is simple and requires only executing startup.sh script located in bin folder of Tomcat path(You may need to do it with sudo as Tomcat is working on standard ports 80 ad 443)
 
HTTPS Connector
~~~~
<Connector port="443" protocol="org.apache.coyote.http11.Http11NioProtocol"
 maxThreads="150" SSLEnabled="true" compression="on">
 <SSLHostConfig>
 <Certificate certificateKeystoreFile="<PATH_TO_KEYSTORE>"
   certificateKeystorePassword="<PASSWORD>"
   certificateKeyAlias="<KEY_ALIAS>"
   certificateKeyPassword="<PASSWORD>"
   type="RSA" />
 </SSLHostConfig>
</Connector>
~~~~ 

#####Autostart Script
- Create script tomcat8 in /etc/init.d directory with content from below
- Add executable permission to it with chmod 755 tomcat8
- Add it to startup scripts with chkconfig --add tomcat8 
- Set appropraite running levels chkconfig --level 234 tomcat8 on  

tomcat8 script file
~~~~
#!/bin/bash
### BEGIN INIT INFO
# Provides: tomcat8
# Required-Start: $network
# Required-Stop: $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Start/Stop Tomcat server
### END INIT INFO
PATH=/sbin:/bin:/usr/sbin:/usr/bin
start() {
 sh /opt/mount1/apache-tomcat-8.5.14/bin/startup.sh
}
stop() {
 sh /opt/mount1/apache-tomcat-8.5.14/bin/shutdown.sh
}
case $1 in
 start|stop) $1;;
 restart) stop; start;;
 *) echo "Run as $0 <start|stop|restart>"; exit 1;;
esac
~~~~