# ICMP - Internet Control Message Protocol

## Overview

ICMP operates at the Network Layer (Layer 3) of the OSI model and is used by network devices, like routers, to send error messages and operational information. It helps in troubleshooting and managing the network.

ICMP messages are encapsulated within IP packets. There are several types of ICMP messages, each serving a specific purpose.

    1. Echo Request and Echo Reply (Type 8 and Type 0)
    2. Destination Unreachable (Type 3)
    3. Time Exceeded (Type 11)
    4. Redirect (Type 5)


## Structure of an ICMP Packet

An ICMP packet is encapsulated within an IP packet. The structure of an ICMP packet includes:

    Type: Indicates the type of the ICMP message.
    Code: Provides further information about the message type.
    Checksum: Used for error-checking the packet's integrity.
    Rest of Header: Varies depending on the type and code.
    Data: Contains the original IP header and the first 8 bytes of the data of the packet that triggered the ICMP message. For Echo Request and Reply, this contains the payload data.

## Example of an ICMP Echo Request Packet

IP Header

    Version: 4 (IPv4)
    Header Length: 20 bytes (5 words)
    Type of Service (ToS): 0
    Total Length: Depends on the size of the ICMP message (e.g., 64 bytes)
    Identification: A unique value for packet identification
    Flags and Fragment Offset: Used for fragmentation control
    Time to Live (TTL): Value set by the sender, decremented by each router
    Protocol: 1 (ICMP)
    Header Checksum: Error-checking for the IP header
    Source IP Address: The IP address of the sender
    Destination IP Address: The IP address of the receiver

ICMP Header

    Type: 8 (Echo Request)
    Code: 0 (No further information required)
    Checksum: Used for error-checking the ICMP header and data
    Identifier: Used to match requests with replies
    Sequence Number: Used to identify the sequence of requests

Data (Payload)

    Contains additional data sent along with the ICMP message. This is usually a set of bytes that the sender wants to test.