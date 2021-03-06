vagrant:
  group:
    - present
  user.present:
    - gid: vagrant
    - home: /home/vagrant
    - require:
      - group: vagrant

rvm-deps:
  pkg.installed:
    - names:
      - bash
      - coreutils
      - gzip
      - bzip2
      - gawk
      - sed
      - curl
      - git-core
      - subversion

mri-deps:
  pkg.installed:
    - names:
      - build-essential
      - openssl
      - libreadline6
      - libreadline6-dev
      - curl
      - git-core
      - zlib1g
      - zlib1g-dev
      - libssl-dev
      - libyaml-dev
      - libsqlite3-0
      - libsqlite3-dev
      - sqlite3
      - libxml2-dev
      - libxslt1-dev
      - autoconf
      - libc6-dev
      - libncurses5-dev
      - automake
      - libtool
      - bison
      - subversion
      - ruby

ruby-2.0.0-p195:
  rvm.installed:
    - default: True
    - user: vagrant
    - require:
      - pkg: rvm-deps
      - pkg: mri-deps
      - user: vagrant

ruby-2.0.0-p353:
  rvm.installed:
    - default: False
    - user: vagrant
    - require:
      - pkg: rvm-deps
      - pkg: mri-deps
      - user: vagrant
