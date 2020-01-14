# rocketbox-init
Note: Rocketbox has been discontinued.
Rocketbox is a wrapper init for Busybox based Linux distributions. Rocketbox currently has three main components: rocketbox-init, rocketbox-service, and rocketbox-shutdown. It also makes use of /etc/inittab.
## Installation
To install Rocketbox on a Busybox-based Linux system, you must follow these instructions as root:

1. Copy over rocketbox-init, rocketbox-shutdown, and rocketbox-service to /etc.
2. Replace /init via soft linking to /etc/rocketbox-init: `ln -s /etc/rocketbox-init /init`
3. Modify /etc/inittab so that on shutdown and reboot, /etc/rocketbox-shutdown and /sbin/init are called respectively(see sample /etc/inittab included).
4. Reboot.
## Managing Services With Rocketbox
Rocketbox-service is a simple wrapper around Busybox's own runit-like service management suite. With it, you can easily add, remove, start, list, and stop services. See `rocketbox-service -h` for details.

### Todo
* Add a wrapper to manage service logs.
