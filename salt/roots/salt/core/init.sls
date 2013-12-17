common-deps:
  pkg.installed:
    - names:
       - dstat
       - bzr
       - etckeeper

AAAAB3NzaC1yc2EAAAABIwAAAIEA6DxAjQ9AvhAxR8WxZD2sG+Qa3lh1kY7ImmViR/93YBconUWMvKdGZUmDV8IeljIom6+FEPsIq7V/aLgKE0xHp9k2t7zAaySHB/vcMCKXGhAkNzoRFVWBig1f0MemeA6d2w4Cxj5zlnx43zPxxCSCkA/SmOXQ2fwj2eJLhct1hok=:
  ssh_auth:
    - present
    - user: root
    - enc: ssh-rsa

sshkeys:
  ssh_auth:
    - present
    - user: root
    - enc: ssh-rsa
    - names:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEA6DxAjQ9AvhAxR8WxZD2sG+Qa3lh1kY7ImmViR/93YBconUWMvKdGZUmDV8IeljIom6+FEPsIq7V/aLgKE0xHp9k2t7zAaySHB/vcMCKXGhAkNzoRFVWBig1f0MemeA6d2w4Cxj5zlnx43zPxxCSCkA/SmOXQ2fwj2eJLhct1hok= jtang@tchpc13
      - ssh-dss AAAAB3NzaC1kc3MAAACBAMujYRtXvvgeZyHKyqsqAQBghnbt1+B4jvZT3oNovVIYSJD0frDzkcwowEIeOhG/2p6SDgCPCfT+t6PKtZp/0r0vaH9Og3dxVfXl8RfHDRt1KAoJ7+htkrK1ZkrHdM4fD4vJunW4rRjIltZp00eFsSvPvqeAnmCWeTWDTv7yCOftAAAAFQDmsynobgZ8eDPQuAjNO2+tCGmARwAAAIBYbipARK4wrO38IJ/Ed3JdI6HLHS6iz7bfDsXAjtRsKexYFAauwCqgD+OBJeF6nr4g48HlV7eJVDGc0LGN74GZj/rHsgDchjrLgg6NPAjt/eGpkrfky/h5Ld03BM9fmZC9K7X7ELQT63FZt+CTXSHSqMZB0bCHbRpeeIF65lNmEgAAAIEApwxTZyArQqxW1o7rFghdOLGtgNAbv1LZLyIMqh7Ybfto6xkctLrLVGHqnQryHtW3Khl13QITKsvN7sk/gKpyQcND9cwEAsf/bkN2/4ECMRx/BGcK8UAKsQA9MyxTIMkG4BAE+OBt6ql+9Q3rJ1ajr+JuNBdUTFGqEBS3WCoxqxw= jtang@tchpc13

saltstack_repo:
  pkgrepo.managed:
    - repo: 'deb http://ppa.launchpad.net/saltstack/salt/ubuntu precise main'
    - file: /etc/apt/sources.list.d/saltstack-salt-precise.list

salt-packages:
  pkg.installed:
    - pkgs:
      - salt-ssh
      - salt-minion
      - salt-master
      - salt-syndic
  require:
      - name: saltstack_repo
