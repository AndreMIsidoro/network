**1st) Install openssh**

	sudo apt-get install openssh-server
	sudo apt-get install openssh-client

**2nd) Confirm the Installation**

	dpkg -s openssh-server
	dpkg -s openssh-client

**3rd) Start the ssh server**

	service ssh start

**4th) Confirm you have the ssh server running**

	ps -efA | grep sshd

**5th) Go to /etc/ssh/sshd_config and confirm that PermitRootLogin is set to yes (if you are gonna login as root)**

	PermitRootLogin yes

	Restart the ssh server if necessary

	service ssh restart
