/etc/environment:
  file.managed:
    - name: /etc/environment
    - source: salt://proxy/etc/environment
    - template: jinja

/etc/apt/apt.conf.d/02proxy:
  file.managed:
    - name: /etc/apt/apt.conf.d/02proxy
    - source: salt://proxy/apt/apt.conf.d/02proxy
    - template: jinja
