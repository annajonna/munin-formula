{% from "munin/map.jinja" import munin_node with context %}

include:
  - munin.node

# Enable common plugins
{% for plugin, linked_file in pillar.get('munin_node_common_plugins', {}).items() %}
{{ munin_node.plugin_dir }}/{{ plugin }}:
  file.symlink:
    - target: {{ munin_node.plugin_dir}}/{{ linked_file }}
    - user: {{ munin_node.file_user }}
    - group: {{ munin_node.file_group }}
    - mode: 755
{% endfor %}

# Node specific plugins
{% for hostname, plugin in salt['pillar.get']('munin_node_specific_plugins', {}).items() %}
{% if salt['pillar.get']('munin_node:host_name') == hostname %}
{% for plugin_name, linked_file in plugin.items() %}
{{ munin_node.plugin_dir }}/{{ plugin_name }}:
  file.symlink:
    - target: {{ munin_node.plugin_dir}}/{{ linked_file }}
    - user: {{ munin_node.file_user }}
    - group: {{ munin_node.file_group }}
    - mode: 755
{% endfor %}
{% endif %}
{% endfor %}

{{ munin_node.service }}:
  service.running:
    - watch:
      - file: {{ munin_node.plugin_dir }}/*
