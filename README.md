debian-isc-dhcp-server-v6
=========================

isc-dhcp-server ipv6 daemon for Debian.

### prerequisites

We need isc-dhcp-server package
```
$ apt-get install isc-dhcp-server
```

note:
Debian isc-dhcp-server package supports only ipv4 daemon.
Therefore, we add ipv6 daemon.

### install

Clone this repository and install
```
$ git clone http://github.com/wataken44/debian-isc-dhcp-server-v6.git
$ cd debian-isc-dhcp-server-v6
$ sh scripts/install.sh
```

### other information

related files:
- init script:  /etc/init.d/isc-dhcp-server6
- config file: /etc/dhcp/dhcpd6.conf
- default option file: /etc/default/isc-dhcp-server6
- directory for lease file: /var/lib/dhcp/

service name: isc-dhcp-server6
