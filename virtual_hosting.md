# Virtual Hosting

## Overview

Virtual hosting is a method for hosting multiple domain names (with separate handling of each name) on a single server (or pool of servers). This allows one server to share its resources, such as memory and processor cycles, without requiring all services provided to use the same host name. The term virtual hosting is usually used in reference to web servers but the principles do carry over to other Internet services.

There are two main types of virtual hosting, name-based and IP-based. Name-based virtual hosting uses the host name presented by the client. This saves IP addresses and the associated administrative overhead but the protocol being served must supply the host name at an appropriate point. In particular, there are significant difficulties using name-based virtual hosting with SSL/TLS. IP-based virtual hosting uses a separate IP address for each host name, and it can be performed with any protocol but requires a dedicated IP address per domain name served. Port-based virtual hosting is also possible in principle but is rarely used in practice because it is unfriendly to users.

A technical prerequisite needed for name-based virtual hosts is a web browser with
HTTP/1.1 support (commonplace today) to include the target hostname in the request.
This allows a server hosting multiple sites behind one IP address to deliver the
correct site's content. More specifically it means setting the Host HTTP header, which
is mandatory in HTTP/1.1.

## Name Based Hosting

Furthermore, if the Domain Name System (DNS) is not properly functioning, it is difficult to access a virtually-hosted website even if the IP address is known. If the user tries to fall back to using the IP address to contact the system, as in http://10.23.45.67/, the web browser will send the IP address as the host name. Since the web server relies on the web browser client telling it what server name (vhost) to use, the server will respond with a default website—often not the site the user expects.

A workaround in this case is to add the IP address and host name to the client system's hosts file. Accessing the server with the domain name should work again. Users should be careful when doing this, however, as any changes to the true mapping between host name and IP address will be overridden by the local setting. This workaround is not really useful for an average web user, but may be of some use to a site administrator while fixing DNS records.
