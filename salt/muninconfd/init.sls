#################### 
#
include:
   - munin.node

#muninconfd-SKRA: # State ID
#  file.managed:
#    - name: /etc/munin/plugin-conf.d/SKRA
#    - user: root
#    - group: root
#    - mode: 644
#    - source:  salt://muninconfd/files/SKRA
#    - template: jinja
#    - require:
#      - pkg: munin_node

# amavis  apache  df  fw_  hddtemp_smartctl  munin-node  postgres  sendmail
# /etc/munin/plugin-conf.d/ 

muninconfd-amavis: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/amavis
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/amavis
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-apache: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/apache
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/apache
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-df: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/df
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/df
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-fw_: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/fw_
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/fw_
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-hddtemp_smartctl: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/hddtemp_smartctl
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/hddtemp_smartctl
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-munin-node: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/munin-node
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/munin-node
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-postgres: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/postgres
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/postgres
    - template: jinja
    - require:
      - pkg: munin_node

muninconfd-sendmail: # State ID
  file.managed:
    - name: /etc/munin/plugin-conf.d/sendmail
    - user: root
    - group: root
    - mode: 644
    - source:  salt://muninconfd/files/sendmail
    - template: jinja
    - require:
      - pkg: munin_node


