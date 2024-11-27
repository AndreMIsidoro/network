# dns - Domain Name System


## DNS Resolution Process

When you type a website address into your browser (like www.example.com), the following process occurs to translate that domain name into an IP address:

### DNS Query Initiation:

        The browser checks if the IP address for the domain is already stored in its local cache. If it is, it uses that cached address and skips the rest of the process.
        If the address is not cached, the operating system sends a DNS query to a DNS resolver.

### DNS Resolver (Recursive Resolver):

        A DNS resolver (typically provided by your Internet Service Provider) takes the query and attempts to resolve the domain name by querying a series of DNS servers.
        If the resolver has the domain cached, it returns the IP address to the client.

### Root DNS Server:

        If the resolver does not have the address, it first contacts a root DNS server. Root servers are responsible for knowing the addresses of all top-level domain (TLD) servers (like .com, .org, .net, etc.).
        The root server responds with a referral to the appropriate TLD server (for www.example.com, it would refer to the .com TLD server).

### TLD DNS Server:

        The resolver then queries the appropriate TLD DNS server (e.g., for .com). The TLD server knows which authoritative DNS server is responsible for the domain.

### Authoritative DNS Server:

        Finally, the resolver contacts the authoritative DNS server for the domain (e.g., the server for example.com). This server holds the actual IP address (or multiple IP addresses) for the domain.
        The authoritative server responds with the domain's IP address.

### Returning the IP Address:

        The resolver sends the IP address back to your computer or device, which can now use it to connect to the desired website or service.


## DNS Caching

To improve performance and reduce load on DNS servers, DNS resolvers and clients (e.g., your computer or browser) cache DNS records. The cache stores recently resolved domain names and their corresponding IP addresses for a specified time (called the Time-to-Live or TTL). This way, if you visit the same website again within a short period, the DNS lookup process is faster.

### Client-side (Local DNS Cache)

    Where: Your computer, device, or browser.

    What it stores: The DNS resolver (a part of your operating system) keeps a local cache of DNS records. These records include domain names and their corresponding IP addresses.

    Web browsers (e.g., Chrome, Firefox, Edge).
    What it stores: Browsers can cache DNS records as part of their overall cache, including content such as images and scripts. While it's not the same as the OS-level DNS cache, the browser will refer to this cache to check whether it already knows the IP address for a previously visited site


## DNS Query Types

DNS queries can be classified into different types:

    Recursive Query: The DNS resolver must provide the final IP address or return an error if it cannot be resolved.
    Iterative Query: The DNS resolver queries a DNS server and, if it doesn’t know the answer, the server provides a referral to another DNS server. The client must continue querying other servers until it gets the answer.

## DNS Security (DNSSEC)

DNS is inherently vulnerable to attacks, like DNS spoofing or cache poisoning, where attackers send false DNS responses to redirect users to malicious sites. DNSSEC (Domain Name System Security Extensions) is a protocol designed to secure DNS by using digital signatures to verify that the DNS responses are legitimate and haven't been tampered with.

## Summary of DNS Flow:

    User requests www.example.com in a browser.
    DNS resolver checks its cache or queries DNS servers.
    Root DNS server -> TLD DNS server -> Authoritative DNS server.
    Authoritative DNS server provides the IP address.
    Resolver returns IP address to the user’s computer.
    User’s computer uses the IP address to connect to the website.