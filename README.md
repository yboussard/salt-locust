# Salt for locust


To test Selfpass on your vagrant box, just install VirtualBox & Vagrant and then, 
from the directory this README.md

   $ vagrant up

## Re-provision

   $ vagrant provision

or 

   $ vagant ssh
   $ sudo salt-call state.highstate --local

