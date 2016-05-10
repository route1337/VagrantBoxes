DeDRM
==============
DeDRM is a Windows 8.1 box with GUI that contains tools for stripping DRM from iTunes videos and Kindle eBooks.
This box exists for the removal of DRM for the [legal use](https://scholar.google.com/scholar_case?case=1065324830275964576&hl=en&as_sdt=2&as_vis=1&oi=scholarr) of the protected files on devices outside the ecosystem they were purchased on.

Box Configuration
------------
| Operating System | IP Address    | DNS Name                          | Vagrant Provider | RAM | CPUs |
|:----------------:|:-------------:|:---------------------------------:|:----------------:|:---:|:----:|
| Windows 8.1 x64  | 192.168.33.50 | dedrm.vg.route1337.com            | Virtualbox       | 2GB | 2    |

Tweaks Performed by Ansible
------------
This box does not get provisioned with Ansible

Special Notes
------------
This box doesn't use the standard "vagrant" password. The local user "nodrm" has "nodrm" as the password as well.

[Back to main README](../README.md)
