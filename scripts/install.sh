#!/bin/sh

SRCDIR=$(dirname $0)

cp $SRCDIR/../etc/init.d/isc-dhcp-server6 /etc/init.d
chmod 755 /etc/init.d/isc-dhcp-server6
chown root:root /etc/init.d/isc-dhcp-server6

cp $SRCDIR/../etc/default/isc-dhcp-server6 /etc/default
chmod 644 /etc/default/isc-dhcp-server6
chown root:root /etc/default/isc-dhcp-server6

cp $SRCDIR/../etc/dhcp/dhcpd6.conf /etc/dhcp
chmod 644 /etc/dhcp/dhcpd6.conf
chown root:root /etc/dhcp/dhcpd6.conf

if [ -f /var/lib/dhcp ]; then
    echo 'mkdir /var/lib/dhcp'
    mkdir /var/lib/dhcp
fi

touch /var/lib/dhcp/dhcpd6.leases

update-rc.d isc-dhcp-server6 defaults
