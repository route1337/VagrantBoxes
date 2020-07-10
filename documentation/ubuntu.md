Ubuntu
======
Ubuntu is a generic Ubuntu 20.04 image with a few tweaks made via Ansible

Box Configuration
-----------------
| Operating System | IP Address    | DNS Name                          | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:---------------------------------:|:----------------:|:---:|:----:|
| Ubuntu 20.04 x64 | 192.168.33.30 | ubuntu.vg.route1337.com           | VirtualBox       | 4GB | 2    |

Ansible roles
-------------
The following Ansible roles are run against this box:

1. [ubuntu_base](https://github.com/route1337/ansible-role-ubuntubase)
2. [linux_users](https://github.com/route1337/ansible-role-linuxusers)
3. [ssh_config](https://github.com/route1337/ansible-role-sshconfig)


Shared Directories (These may not work on Windows)
--------------------------------------------------
1. ~/Scratch will appear on the VM as /scratch
2. ~/Downloads will appear on the VM as /downloads

[Back to main README](../README.md)
