CentOS7
==============
CentOS7 is a generic CentOS 7 image with a few tweaks made via Ansible

Box Configuration
------------
| Operating System | IP Address    | DNS Name                          | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:---------------------------------:|:----------------:|:---:|:----:|
| CentOS 7 x64     | 192.168.33.35 | centos7.vg.route1337.com          | Virtualbox       | 2GB | 2    |

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
2. Tweaks
    1. Configure the America/New_York time zone
    2. Bash history with timestamp
    3. Bash history with 5000 max entries
    4. aliased command: l = ls -lh
    5. aliased command: ll = ls -lhtr
    6. aliased command: rm = rm -i
    7. Nicer bash prompt
    8. Allow root to SSH in with password
    9. Matt's custom thefuck rules


Shared Directories (These may not work on Windows)
------------
1. /Scratch will appear on the VM as /scratch
2. ~/Downloads will appear on the VM as /downloads

[Back to main README](../README.md)
