Route 1337 Vagrant Boxes
========================
This repository contains various Vagrant boxes used for testing and development. The configuration for these boxes has been open sourced for the DevOps community to use. 

Public Boxes
------------
The following Vagrant boxes are publicly usable without having to seek access to the .box file stored in S3

| Box Name                                                 | DNS Name                                             | IP Address                                           | Vagrant Provider   | Description                                                                               | Purpose                                                                   |
|--------------------------------------------------------- |------------------------------------------------------|------------------------------------------------------|--------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| [Ubuntu](documentation/ubuntu.md)                        | ubuntu.vg.route1337.com                              | 192.68.33.30                                         | VirtualBox         | A general purpose Ubuntu 20.04 box                                                        | General quick linux testing                                               |
| [Docker Cluster](documentation/dockercluster.md)         | [Multiple Hosts](documentation/dockercluster.md)     | [Multiple Hosts](documentation/dockercluster.md)     | VirtualBox         | 3 boxes that run Ubuntu 20.04. One Docker Registry, and 2 hosts                           | Development and testing of Docker containers and/or Docker services       |

Note: All DNS names are valid in the route1337.com internet facing zone file. It's easier than editing your hosts file ;)

Private Boxes
-------------
The following Vagrant boxes require being on certain networks to download because they either contain an OS and/or software that isn't free to distribute.

| Box Name                                                 | DNS Name                             | IP Address    | Vagrant Provider   | Description                                                                                           | Purpose                                                                                             |
|----------------------------------------------------------|--------------------------------------|---------------|--------------------|-------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| [DeDRM](documentation/dedrm.md)                          | dedrm.vg.route1337.com               | 192.168.33.50 | VirtualBox         | A Windows 8.1 box with GUI that contains tools for stripping DRM from iTunes videos and Kindle eBooks | Removing DRM from content so it can be viewed on more than one brand of products                    |

Note: All DNS names are valid in the route1337.com internet facing zone file. It's easier than editing your hosts file ;)

Galaxy Roles
------------
Some roles are remote to this repository in order to permit various levels of licensing, testing, and development.  
The [requirements.yml](ansible/roles/requirements.yml) file contains all the roles and their source URLs.  
In order to import or update the roles from their remotes run `./updateRoles.sh`

Donate To Support These Vagrant Boxes
-------------------------------------
Route 1337, LLC operates entirely on donations. If you find these Vagrant boxes useful, please consider using the GitHub Sponsors button to show your continued support.

Thank you for your support!
