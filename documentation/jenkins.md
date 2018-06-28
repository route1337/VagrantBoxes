Jenkins
=======
Jenkins is a generic ubuntu/bionic64 image with the latest LTS release of Jenkins installed and an NginX proxy to get it on port 80.

Box Configuration
------------
| Operating System | IP Address    | DNS Name                          | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:---------------------------------:|:----------------:|:---:|:----:|
| Ubuntu 18.04 x64 | 192.168.33.34 | jenkins.vg.route1337.com          | Virtualbox       | 2GB | 2    |

Tweaks Performed by Ansible
------------
The following tweaks are performed via Ansible provisioning:

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
4. Jenkins installation
  1. Add the official Jenkins repository
  2. Install the latest Jenkins LTS with all the default settings and credentials
  3. Install NginX and configure it to proxy Jenkins over port 80

Jenkins Defaults
----------------
Jenkins runs on port 8080 with no credentials by default but it's proxied via NginX to port 80.

[Back to main README](../README.md)
