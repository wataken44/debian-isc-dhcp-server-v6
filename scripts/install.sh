#!/bin/sh

cp ../etc/init.d/isc-dhcp-server6 /etc/init.d
chmod 755 /etc/init.d/isc-dhcp-server6
chown root:root /etc/init.d/isc-dhcp-server6

cp ../etc/default/isc-dhcp-server6 /etc/default
chmod 644 /etc/default/isc-dhcp-server6
chown root:root /etc/init.d/isc-dhcp-server6

cp ../etc/dhcp/dhcp6.conf /etc/dhcp
chmod 644 /etc/default/dhcp6.conf
chown root:root /etc/init.d/dhcp6.conf

if [ -f /var/lib/dhcp ]; then
    echo 'mkdir /var/lib/dhcp'
    mkdir /var/lib/dhcp
fi

touch /var/lib/dhcp/dhcpd6.leases

update-rc.d -f isc-dhcp-server6 defaults
