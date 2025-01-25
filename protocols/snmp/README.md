# snmp - Simple Network Management Protocol

## Overview


SNMP (Simple Network Management Protocol) is a widely used protocol for managing devices on a network. It allows administrators to monitor and manage network devices such as routers, switches, servers, printers, and other hardware from a central location.


## Key Components of SNMP

1. **Managed Devices**: These are the network devices or systems (like routers, switches, servers) that can be monitored or controlled via SNMP.
2. **SNMP Agent**: A software component that runs on the managed device. It collects and stores information about the device’s status and provides this information when queried by an SNMP manager.
3. **SNMP Manager**: The system (usually a server or a management station) that communicates with SNMP agents to monitor and control managed devices.
4. **MIB (Management Information Base)**: A virtual database that holds the structure of the network devices' data. The MIB defines the parameters and statistics that can be accessed using SNMP, such as device uptime, CPU usage, memory usage, etc.


## How SNMP Works

1. **SNMP Manager requests data**: The SNMP manager sends a request (GET) to the SNMP agent on a device.
2. **SNMP Agent responds**: The SNMP agent on the managed device sends the requested information (such as the device’s system status) back to the manager.
3. **SNMP Traps (optional)**: If a significant event occurs on the device, the SNMP agent can send a trap message to the manager to notify it of the event (e.g., an interface goes down).

