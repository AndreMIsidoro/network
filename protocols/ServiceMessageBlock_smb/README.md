# SMB - Server Message Block

## Overview

Server Message Block (SMB) is a communication protocol intended to provide shared access to files and printers across nodes on a network of systems.

Usually runs on port 445 and runs at the Application or Presentation layers of the OSI model . Due to this, it relies on lower-level protocols for transport. The Transport layer protocol that Microsoft SMB Protocol is most often used with is NetBIOS over TCP/IP (NBT). This is why, during scans, we will most likely see both protocols with open ports running on the target. 

Using the SMB protocol, an application (or the user of an application) can access files at a remote server, along with other resources such as printers. Thus, a client application can read, create, and update files on the remote server. It can also communicate with any server program that is set up to receive an SMB client request.

An SMB-enabled storage on the network is called a share . These can be accessed by any client that has the address of the server and the proper credentials. Like many other file access protocols, SMB requires some security layers to function appropriately within a network topology. If SMB allows clients to create, edit, retrieve, and remove files on a share, there is a clear need for an authentication mechanism. At a user level, SMB clients are required to provide a username/password combination to see or interact with the contents
of the SMB share.

Despite having the ability to secure access to the share, a network administrator can sometimes make mistakes and accidentaly allow logins without any valid credentials or using either guest accounts or anonymous log-ons .

## smbclient 

In order to successfully enumerate share content on the remote system, we can use a script called smbclient .

Smbclient will attempt to connect to the remote host and check if there is any authentication required. If there is, it will ask you for a password for your local username. We should take note of this. If we do not specify a specific username to smbclient when attempting to connect to the remote host, it will just use your local machine's username. That is the one you are currently logged into your Virtual Machine with. This is because SMB authentication always requires a username, so by not giving it one explicitly to try to login with, it will just have to pass your current local username to avoid throwing an error with the protocol.

## smbclient Options

	-L : lists the shares on target host
	-N : No password
	
## smbclient commands

	\\\\<target_ip>\\<share_name> # connects to the desired share

## smb shell Commands

	ls : listing contents of the directories within the share
	cd : changing current directories within the share
	get : downloading the contents of the directories within the share
	exit : exiting the smb shell

## Cookbook

Download file from smb

	get <file_name>

Start a smb server:

	https://github.com/Andre92Marcos/tools/tree/master/impacket