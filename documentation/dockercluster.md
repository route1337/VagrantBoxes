Docker Cluster
====================
The Docker Cluster runs 3 Vagrant boxes to test a small local Docker cluster. There is one Docker Registry box and two Docker host boxes.  

Box Configuration
------------
| Operating System | IP Address    | DNS Name                            | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:-----------------------------------:|:----------------:|:---:|:----:|
| Ubuntu 14.04 x64 | 192.168.33.31 | dockerreg.vg.route1337.com          | Virtualbox       | 1GB | 1    |
| Ubuntu 14.04 x64 | 192.168.33.32 | dockerhost1.vg.route1337.com        | Virtualbox       | 3GB | 2    |
| Ubuntu 14.04 x64 | 192.168.33.33 | dockerhost2.vg.route1337.com        | Virtualbox       | 3GB | 2    |

Tweaks Performed by Ansible
------------
The following tweaks are performed on all hosts via Ansible provisioning:

1. Installed packages
  1. vim
  2. curl
  3. gnupg2
  4. atop
  5. bmon
  6. git
  7. python-pip
  8. python-dev
  9. thefuck (pip package)
2. Default packages removed
  1. landscape-client-ui
  2. landscape-client-ui-install
  3. landscape-client
  4. landscape-common
  5. update-motd
3. Tweaks
  1. Configure the America/New_York time zone
  2. Bash history with timestamp
  3. Bash history with 5000 max entries
  4. aliased command: l = ls -lh
  5. aliased command: ll = ls -lhtr
  6. aliased command: rm = rm -i
  7. Nicer bash prompt
  8. Allow root to SSH in with password
  9. Matt's custom thefuck rules

The following tweaks are performed on dockerreg via Ansible provisioning:

1. Add the official Docker repo
2. Install packages
  1. linux-image-extra-virtual
  1. docker-engine
3. Configure a Docker Registry v2 that listens on port 443

The following tweaks are performed on dockerhost1 and dockerhost2 via Ansible provisioning:

1. Add the official Docker repo
2. Install packages
  1. linux-image-extra-virtual
  2. docker-engine
3. Configure Docker to authenticate against the dockerreg registry

Using The Registry
------------
The Docker Registry operates on port 443 on dockerreg.vg.route1337.com. It uses "route" as the username and "onethreethreeseven" as the password. It runs registry API v2. The hosts should automatically be authenticated to it during the Ansible provisioning.

[Back to main README](../README.md)
