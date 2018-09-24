yum install epel-release
yum install yum-plugin-copr

# Then add the repo:

yum copr enable ngompa/snapcore-el7

#####
# Loaded plugins: copr, fastestmirror
# ...
# Do you want to continue? [y/N]: y
# copr done
#####

# Once the repository has been added, install snapd package.

yum -y install snapd

# Wait for the installation to finish then enable snapd socket:

systemctl enable --now snapd.socket

# Created symlink from /etc/systemd/system/sockets.target.wants/snapd.socket to /usr/lib/systemd/system/snapd.socket.

# Classic confinement requires snaps under /snap or symlink from /snap to /var/lib/snapd/snap. Create a symlink for it like below:

ln -s /var/lib/snapd/snap /snap
