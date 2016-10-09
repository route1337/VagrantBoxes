Matthew Ahrenstein's Vagrant Boxes
==================================
This repository contains various Vagrant boxes I use for testing and development. The configuration for these boxes has been open sourced for the DevOps community to use. 

Public Boxes
------------
The following Vagrant boxes are publicly usable without having to seek access to the .box file stored in S3

| Box Name                                         | DNS Name                                         | IP Address                                       | Vagrant Provider   | Description                                                                          | Purpose                                                                   |
|------------------------------------------------- |--------------------------------------------------|--------------------------------------------------|--------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| [BoxyBrown](documentation/boxybrown.md)          | boxybrown.vg.route1337.com                       | 192.68.33.30                                     | VirtualBox         | A general purpose Ubuntu 14.04 with some customizations                              | General quick linux testing of various things                             |
| [IE6](documentation/ie6.md)                      | N/A                                              | NAT DHCP                                         | VirtualBox         | Windows XP with GUI that has Internet Explorer 6 installed                           | Accessing admin UIs that require the legacy browser Internet Explorer 6   |
| [Docker Cluster](documentation/dockercluster.md) | [Multiple Hosts](documentation/dockercluster.md) | [Multiple Hosts](documentation/dockercluster.md) | VirtualBox         | 3 boxes that run Ubuntu 14.04. One Docker Registry, and 2 hosts                      | Development and testing of Docker containers and/or Docker services       |
| [Jenkins](documentation/jenkins.md)              | jenkins.vg.route1337.com                         | 192.68.33.34                                     | VirtualBox         | The latest Jenkins LTS running on Ubuntu 14.04 with nginx proxying it to port 80     | Testing Jenkins plugins and integrations                                  |

Note: All DNS names are valid in the route1337.com internet facing zone file. It's easier than editing your hosts file ;)

Private Boxes
------------
The following Vagrant boxes require being on certain networks to download because they either contain an OS and/or software that isn't free to distribute.

| Box Name                                                 | DNS Name                             | IP Address    | Vagrant Provider   | Description                                                                                           | Purpose                                                                               |
|----------------------------------------------------------|--------------------------------------|---------------|--------------------|-------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| [DeDRM](documentation/dedrm.md)                          | dedrm.vg.route1337.com               | 192.168.33.50 | VirtualBox         | A Windows 8.1 box with GUI that contains tools for stripping DRM from iTunes videos and Kindle eBooks | Removing DRM from content so it can be viewed on more than one brand of products      |
| [Fusion-Mavericks](documentation/fusion-mavericks.md)    | mavericks.vg.route1337.com           | 192.168.40.30 | VMware Fusion      | A basic OS X Mavericks 10.9.5 installation with Ansible preinstalled                                  | Testing Chef/Ansible code against OS X Mavericks                                      |
| [Fusion-Yosemite](documentation/fusion-yosemite.md)      | yosemite.vg.route1337.com            | 192.168.40.31 | VMware Fusion      | A basic OS X Yosemite 10.10.5 installation with Ansible preinstalled                                  | Testing Chef/Ansible code against OS X Yosemite                                       |
| [Fusion-ElCapitan](documentation/fusion-elcapitan.md)    | elcapitan.vg.route1337.com           | 192.168.40.32 | VMware Fusion      | A basic OS X El Capitan 10.11.6 installation with Ansible preinstalled                                | Testing Chef/Ansible code against OS X El Capitan                                     |
| [Fusion-Sierra](documentation/fusion-sierra.md)          | sierra.vg.route1337.com              | 192.168.40.33 | VMware Fusion      | A basic macOS Sierra 10.12.0 installation with Ansible preinstalled                                   | Testing Chef/Ansible code against macOS Sierra                                        |

Note: All DNS names are valid in the route1337.com internet facing zone file. It's easier than editing your hosts file ;)
