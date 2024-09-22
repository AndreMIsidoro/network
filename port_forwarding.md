# Port Forwarding

## Local port forwarding

	ssh -L local_port:remote_host:remote_port

	Let's say that we have a remote host running an application on port 4444, that only accepts local connections. We can port forward from our localhost by doing this in our localhost
	ssh <user>@<ip_remote_host> -L 4444:127.0.0.1:4444

## Remote port forwarding

	ssh -R remote_port:local_host:local_port

## From local port to remote port

We can use ssh to accomplish this

	ssh -L 5000:<remote_ip>:5001 root@<remote_ip>

This commands sends incoming traffic on localhost:5000 to <remote_ip>:5001

## From local port to another local port

We can use socat for this

	socat TCP4-LISTEN:5001,fork TCP4:localhost:5000

This sends all incoming traffic in port 5001 to 5000
Can be used with the previous ssh command

## Tool for windows and Linux

	chisel: https://github.com/Andre92Marcos/tools/tree/master/chisel

