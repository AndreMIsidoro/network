**Forward Packets To Wireshark Analyser**

	iptables -t mangle -A PREROUTING -d 192.168.ip.to.monitor -j TEE --gateway 192.168.1.wireshark
	iptables -t mangle -A PREROUTING -s 192.168.ip.to.monitor -j TEE --gateway 192.168.1.wireshark


**Use ssh to capture packets of remote host and analyse them live through wireshark**

    ssh user@remoteHost tcpdump -U -s 65535 -w - ‘not port 22’ | wireshark -k -i -
