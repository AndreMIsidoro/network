# dhcp - Dynamic Host Configurtion Protocol

## Overview

DHCP (Dynamic Host Configuration Protocol) is a network protocol used to automatically assign IP addresses and other network configuration parameters to devices on a network. This allows devices (such as computers, printers, and smartphones) to join the network without requiring manual configuration.

### Key Concepts of DHCP:

    Dynamic IP Address Assignment: Instead of assigning a static IP address manually to each device on a network, DHCP dynamically allocates an IP address to each device when it connects. This makes network management easier, especially in large networks with many devices.

    DHCP Server: The server that manages and assigns IP addresses. It can be a dedicated machine or a router with DHCP functionality. The server maintains a pool of available IP addresses and allocates them to devices as they request them.

    DHCP Client: Any device that connects to the network and requests an IP address from the DHCP server (e.g., a laptop, smartphone, or printer).

    IP Address Lease: When a DHCP server assigns an IP address to a client, it is typically leased for a limited time, known as the "lease time." After the lease expires, the device must request a new IP address.

    DHCP Process: The DHCP process typically involves the following steps:

        Discover: The client sends a DHCP Discover message to the network, requesting an IP address.
        Offer: The DHCP server responds with a DHCP Offer message, which includes an available IP address and other configuration details (e.g., subnet mask, default gateway).
        Request: The client sends a DHCP Request message back to the server, indicating that it accepts the offered IP address.
        Acknowledge: The DHCP server sends an Acknowledgment message confirming the assignment of the IP address and lease details.

    Other Network Configuration: In addition to assigning IP addresses, DHCP can provide other important network settings, such as:

        Subnet mask: Defines the network portion of the IP address.
        Default gateway: The device used to route traffic from the local network to other networks.
        DNS servers: Specifies the IP addresses of DNS servers used to resolve domain names to IP addresses.

## Discover

A client sends a DHCP Discover message to the DHCP server when it is trying to join a network and does not have an IP address assigned yet. This typically happens under the following circumstances:

    When the Client First Connects to the Network
    When the Lease Expiry Occurs
    When the Client’s IP Address is Released or Becomes Invalid
    When the Client Switches Networks


How the Discover Message Works:

    The DHCP Discover message is typically a broadcast message sent by the client to all devices on the local network (to the IP address 255.255.255.255).
    The DHCP server, if available on the network, receives the broadcast and responds with a DHCP Offer message, which includes an IP address from its available pool, along with additional configuration information.