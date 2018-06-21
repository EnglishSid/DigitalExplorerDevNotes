- login to production frontend server
- change directory too
~~~~
cd /opt/mount1
~~~~
- tar the file_storage directory
~~~~
sudo tar -zcvf de.file.<date>.tar.gz filestore
~~~~
- transfer the file to your local pc (use winscp)
- transfer the .gz file to the target environment
- remove the existing file_storage directory (if it exists)
~~~~
cd /opt/mount1
sudo rm -r filestore
~~~~

- Extract the new tar file
~~~~
sudo tar -xvzf de.file.<date>.tar.gz filestore
~~~~