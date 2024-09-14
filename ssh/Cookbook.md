**Execute commands in a remote host**

	ssh user@host << END
	> command
	…
	> END


**Create tunnels between remote host and other remote host**

	ssh user@remotehost -L 1433:otherRemoteHost:1433 -L 1521:otherRemoteHost:1521


**Generate ssh key**

	ssh-keygen -t rsa -b 2048

**Copy ssh-key to remote host**

	ssh-copy-id -i publicKey.pub user@host

**Use ssh to capture packets of remote host and store them as a cap file on local Host**

	ssh user@remoteHost -- “tcpdump -w - -s 65535 ‘not port 22’ “ > capture.pcap

**Use ssh to capture packets of remote host and analyse them live through wireshark**

	ssh user@remoteHost tcpdump -U -s 65535 -w - ‘not port 22’ | wireshark -k -i -

