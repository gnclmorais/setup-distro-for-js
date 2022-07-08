# setup-distro-for-js [![status](https://github.com/gnclmorais/setup-distro-for-js/actions/workflows/setup.yml/badge.svg)](https://github.com/gnclmorais/setup-distro-for-js/actions/workflows/setup.yml)

Setup a Linux distro for JavaScript development by running this script! If you want to know what gets run, you can quickly look at the [`dist` script](dist/all.sh) that everything compiles to.


## TL;DR

Paste & execute the following on your Ubuntu terminal
```bash
wget -O - https://raw.githubusercontent.com/gnclmorais/setup-distro-for-js/main/dist/all.sh | bash
```

## Sharing folders

Based on [these helpful instructions](https://gist.github.com/darrenpmeyer/b69242a45197901f17bfe06e78f4dee3) by @darrenpmeyer, here is the gist of it:
1. With your VM on, make sure the folder `/mnt/hgfs` exists by running `sudo mkdir /mnt/hgfs`
1. Edit `/etc/fstab` with `sudo vim /etc/fstab`, adding the following line to the bottom of the file and saving it:
   ```
   .host:/	/mnt/hgfs	fuse.vmhgfs-fuse	auto,allow_other	0	0
   ```
1. Turn the VM off now
1. Create a folder on your macOS that you want to use as a read-only place for the VM
1. On the VM window, still off, go to _Virtual Machine_, pick _Sharing_, then _Sharing Settings_
1. Check _Enable Shared Folders_, click the plus icon and pick the folder you created on step 4
1. Turn your VM on now, and you should be able to see your folder when you do `ls /mnt/hgfs` on a terminal!
