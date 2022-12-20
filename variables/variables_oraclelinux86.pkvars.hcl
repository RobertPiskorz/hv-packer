iso_url = "https://yum.oracle.com/ISOS/OracleLinux/OL8/u6/x86_64/OracleLinux-R8-U6-x86_64-dvd.iso"
iso_checksum_type = "sha256"
iso_checksum = "988969accaddd7fbf4f7ddced16c1b69d3e5c097435fcb2474426936a9c52aeb"
vm_name = "packer-oraclelinux86-g2"
disk_size = "70000"
disk_additional_size = ["150000"]
switch_name = "vSwitch"
output_directory = "output-oraclelinux86"
output_vagrant = "./vbox/packer-oraclelinux86-g2.box"
vlan_id = ""
memory = "4096"
cpus = "4"
vagrantfile_template = "./vagrant/hv_oraclelinux86_g2.template"
ssh_password = "password"
provision_script_options = "-z false"
boot_command = "c  setparams 'kickstart' <enter> linuxefi /images/pxeboot/vmlinuz inst.stage2=hd:LABEL=OL-8-6-0-BaseOS-x86_64 inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/gen2-oraclelinux8/ks.cfg<enter> initrdefi /images/pxeboot/initrd.img<enter> boot<enter>"
ansible_override = "variables/oraclelinux8.yml"
