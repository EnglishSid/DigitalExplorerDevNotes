installation location : /opt/mount1
transfer neo installation package to server - currently running version 3.0.4
grab installation file from : https://github.houston.entsvcs.net/davidstevens/neo304 
 
install/update java
Ensure the JDK version installed on the server is 1.8.0
 
###install neo
expand the .tar.gz file into the installation location
~~~~
tar -xf <filename>
~~~~
 
###Update the configuration file
Ensure bolt and https connections are enabled from remote hosts
uncomment the following lines
~~~~
dbms.connector.bolt.address=0.0.0.0:7687

 
dbms.connector.http.address=0.0.0.0:7474

~~~~

change the following line (from localhost to 0.0.0.0)
~~~~
dbms.connector.https.address=0.0.0.0:7473
 ~~~~

###install the latest database version
follow the steps here : Synchronization of Graph databases
ignore the last step about "reference only solutions"