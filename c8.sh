#!/bin/sh
#!/bin/sh

echo "Ssh access to pcDuino"

if [ $# -ne 1 ]; then
	echo "Usage $0 sub-ip"
	return
fi
IP=$1

echo "linaro@192.168.1.$IP"

ssh linaro@192.168.1.$IP
