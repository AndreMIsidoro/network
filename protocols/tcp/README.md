# tcp - Transmission Control Protocol

The Transmission Control Protocol (TCP) is a fundamental protocol in the Internet Protocol (IP) suite, used to reliably send data across networks. TCP is known for its robust, connection-oriented design that ensures data is delivered accurately and in the correct order, making it critical for applications where data integrity and reliability are essential, like web browsing, email, and file transfer.

Here’s a breakdown of the key concepts of TCP:

### 1. **Connection-Oriented Protocol**
   - **Establishing a Connection**: TCP is connection-oriented, meaning it requires a connection to be established before data can be sent. This setup involves a process called the "three-way handshake."
   - **Three-Way Handshake**: The handshake consists of three steps:
     1. **SYN**: The client sends a SYN (synchronize) packet to the server, indicating it wants to start a connection.
     2. **SYN-ACK**: The server responds with a SYN-ACK (synchronize-acknowledge) packet, acknowledging the client's request and agreeing to communicate.
     3. **ACK**: The client sends an ACK (acknowledge) packet back to the server, finalizing the connection.
   - Once the handshake completes, the connection is established, and data transfer can begin.

### 2. **Reliable Data Transfer**
   - **Acknowledgments**: TCP requires each data packet sent to be acknowledged by the receiver, ensuring that data has arrived successfully.
   - **Sequence Numbers**: Every byte of data is assigned a sequence number, allowing the receiver to reassemble packets in the correct order.
   - **Retransmissions**: If the sender does not receive an acknowledgment within a certain time, it assumes the packet was lost and retransmits it.

### 3. **Flow Control**
   - TCP manages the rate of data transfer using a technique called **flow control**. This prevents the sender from overwhelming the receiver with too much data at once.
   - **Window Size**: The receiver advertises a window size (number of bytes it can handle at a time) to the sender, which adjusts its sending rate accordingly.
   - The **sliding window mechanism** adjusts dynamically based on the network conditions, enabling efficient and smooth data transfer.

### 4. **Congestion Control**
   - TCP also includes mechanisms for congestion control to prevent network overload.
   - **Congestion Window**: TCP dynamically adjusts a congestion window, which controls the number of unacknowledged packets that can be in the network at one time.
   - **Slow Start and Congestion Avoidance**: TCP begins with a slow transmission rate and increases gradually (slow start) until it detects congestion, then switches to congestion avoidance mode to maintain stable data flow.

### 5. **Orderly Termination**
   - **Connection Teardown**: When the communication is complete, TCP uses a four-step process to close the connection, ensuring that both sides agree the connection is no longer needed.
   - This includes exchanging FIN (finish) and ACK packets in a sequence to gracefully close the session.

### Summary of Key Features
   - **Reliable**: Ensures accurate data delivery through acknowledgments, sequence numbers, and retransmissions.
   - **Ordered**: Data is reassembled in the correct order on the receiving end.
   - **Error-Checked**: TCP uses checksums to detect errors in each packet.
   - **Flow and Congestion Controlled**: Manages data flow to prevent receiver overload and network congestion.

### Comparison to UDP
TCP contrasts with the **User Datagram Protocol (UDP)**, which is faster but offers no guarantee of data delivery, ordering, or error correction. This makes TCP ideal for reliability-focused applications, while UDP is preferred for latency-sensitive tasks like online gaming or video streaming, where occasional data loss is acceptable.
