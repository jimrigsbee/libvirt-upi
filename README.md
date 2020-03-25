# OpenShift UPI Installation on KVM
This set of Ansible playbooks and roles were inspired by the *ansible_libvirt_upi_bm* folder in the repository at https://github.com/aizuddin85/openshift4.git.

I have modified them as follows:

* Automate the creation of the helper machine
* Use libvirt networking for DHCP on the host machine
* Domain is ocp4.example.com 
