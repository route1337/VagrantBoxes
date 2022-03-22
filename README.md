Deprecated Repo
------------
Route 1337 LLC's Vagrant boxes repo has been deprecated and will no longer be supported. We are happy to take community contributions or invite volunteer maintainers if support is desired. If you wish to maintain our Vagrant boxes repo you may [contact us](https://www.route1337.com/contact-us/).

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

Note: None of the DNS names are valid in any public DNS zones. They are simply how the VMs are configured

Galaxy Roles
------------
Some roles are remote to this repository in order to permit various levels of licensing, testing, and development.  
The [requirements.yml](ansible/roles/requirements.yml) file contains all the roles and their source URLs.  
In order to import or update the roles from their remotes run `./updateRoles.sh`

Donate To Support These Vagrant Boxes
-------------------------------------
Route 1337 LLC's open source code heavily relies on donations. If you find these Vagrant boxes useful, please consider using the GitHub Sponsors button to show your continued support.

Thank you for your support!
