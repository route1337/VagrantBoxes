Docker Cluster
==============
The Docker Cluster runs 3 Vagrant boxes to test a small local Docker cluster. There is one Docker Registry box and two Docker host boxes.  

Box Configuration
-----------------
| Operating System | IP Address    | DNS Name                            | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:-----------------------------------:|:----------------:|:---:|:----:|
| Ubuntu 20.04 x64 | 192.168.33.31 | dockerreg.vg.route1337.com          | VirtualBox       | 1GB | 1    |
| Ubuntu 20.04 x64 | 192.168.33.32 | dockerhost1.vg.route1337.com        | VirtualBox       | 3GB | 2    |
| Ubuntu 20.04 x64 | 192.168.33.33 | dockerhost2.vg.route1337.com        | VirtualBox       | 3GB | 2    |

Ansible roles
-------------
The following Ansible roles are run against this box:

1. [ubuntu_base](https://github.com/route1337/ansible-role-ubuntubase)
2. [linux_users](https://github.com/route1337/ansible-role-linuxusers)
3. [ssh_config](https://github.com/route1337/ansible-role-sshconfig)
4. [docker_host](https://github.com/route1337/ansible-role-dockerhost)
5. [docker-registry](../ansible/roles/docker-registry)

Using The Registry
------------
The Docker Registry operates on port 443 on dockerreg.vg.route1337.com. It uses "route" as the username and "onethreethreeseven" as the password. It runs registry API v2.

[Back to main README](../README.md)
