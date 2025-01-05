# smtp - Simple Mail Transfer Protocol

## Overview

SMTP (Simple Mail Transfer Protocol) is a communication protocol used for sending and receiving email over the Internet. It defines the rules and procedures for email transmission between mail servers. It is one of the core protocols that facilitate electronic communication and plays a key role in the delivery of email messages from a sender to a recipient.

SMTP is used primarily for the sending and forwarding of emails. It works by transferring email from a sender's email client to the mail server, and from one mail server to another until it reaches the recipient's mail server. However, SMTP does not handle email retrieval (such as reading or downloading emails) — that function is handled by other protocols like POP3 (Post Office Protocol) and IMAP (Internet Message Access Protocol).

### SMTP Functions

SMTP handles two main tasks:

Sending Emails: It sends outgoing mail from the email client to the server (outgoing mail server or SMTP server).
Relaying Emails: SMTP servers forward the emails to other SMTP servers until they reach their final destination.

### How SMTP Works

When an email is sent, the process typically involves the following steps:

1. **Sender’s Email Client (MUA - Mail User Agent)**: The user creates an email message using their email client (e.g., Outlook, Thunderbird, or a web-based interface).
2. **Connecting to the SMTP Server**: The email client establishes a connection to the **SMTP server** of the sender's email provider (e.g., smtp.gmail.com).
3. **SMTP Server Authentication**: The sender may need to authenticate to the SMTP server using their credentials (username and password) to prevent unauthorized use of the server for sending emails.
4. **Email Submission**: The email client sends the email to the SMTP server. The email is composed of the **sender’s address**, **recipient’s address**, **subject**, **body**, and **attachments** (if any).
5. **Message Processing**: The SMTP server processes the message, determines the recipient’s mail server by querying the Domain Name System (DNS), and then forwards the email to the next mail server on the route.
6. **Recipient’s Mail Server**: The recipient’s mail server receives the email. Once received, the email is stored until the recipient retrieves it through **POP3** or **IMAP**.

### SMTP Message Format

An SMTP message has a standard format consisting of the following parts:

- **HELO/EHLO Command**: The client introduces itself to the server (e.g., `EHLO example.com`).
- **MAIL FROM Command**: Specifies the sender’s email address.
- **RCPT TO Command**: Specifies the recipient’s email address.
- **DATA Command**: Indicates that the actual message content is being sent. This is followed by the message header (subject, to, from, etc.), the body of the message, and any attachments.
- **QUIT Command**: Ends the connection between the client and the server.

### SMTP Commands

SMTP defines several commands for communication between the client (sender) and the server (recipient). These include:

- **HELO/EHLO**: Used to initiate the communication. EHLO is the extended version and allows for enhanced features.
- **MAIL FROM**: Specifies the sender’s email address.
- **RCPT TO**: Specifies the recipient’s email address.
- **DATA**: Signals the start of the message body.
- **QUIT**: Ends the communication session.
- **RSET**: Resets the current session, allowing the sender to restart the message composition.
- **VRFY**: Verifies if an email address exists.
- **NOOP**: No operation; used to check if the server is available.

### SMTP Ports

SMTP commonly uses the following ports:

- **Port 25**: The traditional port for SMTP, primarily used for communication between mail servers. It is increasingly blocked by many ISPs (Internet Service Providers) for outgoing mail to reduce spam.
- **Port 587**: The recommended port for **sending emails** securely with **SMTP authentication**. It is often used for client-to-server communication.
- **Port 465**: Another port once used for sending email securely via **SMTPS** (SMTP over SSL), though it is less common today.

SMTP servers typically support encryption (SSL/TLS) for secure communication, especially when using Port 587 or Port 465.

### SMTP Authentication

SMTP servers typically require authentication before allowing the sending of email, ensuring only authorized users can send mail. The two most common types of authentication are:

- **Plaintext Authentication**: Involves sending the username and password in clear text (used with TLS/SSL encryption for security).
- **Login Authentication**: A base64-encoded string of the username and password is sent.

### SMTP Security (TLS/SSL)

To ensure the confidentiality and integrity of emails during transmission, **Transport Layer Security (TLS)** or **Secure Sockets Layer (SSL)** can be used. These protocols encrypt the communication between the email client and the SMTP server.

- **STARTTLS**: A command used to initiate encryption in an existing unencrypted connection. It upgrades the connection to a secure one (typically over Port 587).
- **SMTPS**: Refers to the use of SSL/TLS on Port 465, providing encryption for SMTP connections.



