# FTP - File Transfer Protocol

## Overview

## User Misconfiguration

A typical misconfiguration for running FTP services allows an anonymous account to access the service like any other authenticated user. The anonymous username can be input when the prompt appears, followed by any password whatsoever since the service will disregard the password for this specific account.

## Command Status

The operation of FTP services also issue the status for the commands you
are sending to the remote host. The meaning of status updates are as follows:
	200 : PORT command successful. Consider using PASV.
	150 : Here comes the dir
	226 : Directory send OK.

## Commands
	ls|dir : List the files of the current directory
	get : Downloads file to local machine
	bye : Exits ftp

