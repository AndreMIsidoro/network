#Execute commands in a remote host
ssh user@remotehost << END
ls -l
…
END

#Create tunnels between remote host and other remote host
ssh user@remotehost -L 1433:otherRemoteHost:1433 -L 1521:otherRemoteHost:1521

#Generate ssh key
ssh-keygen -t rsa -b 2048

#Copy ssh-key to remote host
ssh-copy-id -i publicKey.pub user@host