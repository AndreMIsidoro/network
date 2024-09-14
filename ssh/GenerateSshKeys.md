**1st) Confirm that openssh is installed**

	dpkg -s openssh-client
	dpkg -s openssh-server

**2nd) Generate private and public key**

    ssh-keygen -t ed25519 -C "your_email@example.com"

**3rd) Copy the public key to the ssh server**

    ssh-copy-id -i ~/.ssh/example_key.pub example_user@192.0.2.123

An SSH key allows you to log into your server without a password. This guide describes creating SSH keys using a Linux, Mac, or Windows workstation in OpenSSH format, suitable for use with Vultr server instances.

Create an SSH Key with OpenSSH
OpenSSH is standard and should be present on macOS and most Linux distributions. We also have installation instructions for Windows 10 users. Follow these steps to create an SSH key with the OpenSSH utilities.

Generate your key with ssh-keygen, substituting your email address.

 $ ssh-keygen -t ed25519 -C "your_email@example.com"
Note: If you use a legacy system that doesn't support the Ed25519 algorithm, use: ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

By default, the keys are stored in the ~/.ssh directory. Most SSH clients automatically use these default filenames:

Algorithm: ED25519 (preferred)

Public key: id_ed25519.pub

Private key: id_ed25519

Algorithm: RSA (at least 2048-bit key size)

Public key: id_rsa.pub

Private key: id_rsa

Algorithm: DSA (deprecated)

Public key: id_dsa.pub

Private key: id_dsa

Algorithm: ECDSA

Public key: id_ecdsa.pub

Private key: id_ecdsa

Press ENTER to save the key in the default location.

Generating public/private ed25519 key pair.

Enter file in which to save the key (/Users/example/.ssh/id_ed25519):
You may enter a passphrase for your key. We recommend using a passphrase, but you can press ENTER to bypass this prompt. If you use a passphrase, you will enter it each time you use the key unless you also use ssh-agent.

Enter passphrase (empty for no passphrase):

Enter same passphrase again:
Your key is generated and saved.

Your identification has been saved in /Users/example/.ssh/id_ed25519.

Your public key has been saved in /Users/example/.ssh/id_ed25519.pub.

The key fingerprint is:

SHA256:qx6prR4Zo+VU7Fl8yivXzzzzzzzzJ/9NRnPbrC20w7g example@example.com

The key's randomart image is:

+--[ED25519 256]--+

|                 |

|     o .         |

|    o B o + .    |

|     B + + o +   |

|    = = S o o o  |

|   = + = O + +   |

|  . + B B = * .  |

|     = O   + o   |

|   .+o=.. E .    |

+----[SHA256]-----+
Make a backup of the private key. The key cannot be recovered if lost.

Before connecting to an existing server with your SSH key, you'll need to add the public key to the authorized_keys file. You can also add the public key to your Vultr account.