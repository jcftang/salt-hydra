/etc/environment:
  file.managed:
    - name: /etc/environment
    - source: salt://proxy/etc/environment
    - template: jinja

/etc/apt/apt.conf.d/02proxy:
  file.absent:
    - name: /etc/apt/apt.conf.d/02proxy
