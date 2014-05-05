locustmaster:
   pkg:
    - installed
    - names:
        - supervisor
   supervisord:
    - running
    - restart: True 
    - require:
        - pkg: supervisor
        - sls: locust
    - watch:
        - file: /etc/supervisor/conf.d/locust.conf

locustslaves:
   pkg:
    - installed
    - names:
        - supervisor
   supervisord:
    - running
    - restart: True 
    - require:
        - pkg: supervisor
        - sls: locust
    - watch:
        - file: /etc/supervisor/conf.d/locust.conf



/etc/supervisor/conf.d/locust.conf:
  file.managed:
    - source: salt://supervisor/conf.d/locust.conf
    - mkdirs: True
    - user: root
    - group: root
    - require:
        - pkg: supervisor
