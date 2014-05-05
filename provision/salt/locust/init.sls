mandatory_packages:
  pkg:
     - installed
     - names:
         - python-dev
         - python-virtualenv


/home/vagrant/locust:
   virtualenv.managed:
       - no_site_packages: True
       - runas: vagrant
       - requirements: salt://locust/requirements.txt
       - require:
           - pkg: python-virtualenv  
           - pkg: python-dev
