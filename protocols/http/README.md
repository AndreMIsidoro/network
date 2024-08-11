# http

## Status Codes

	200	Ok	The request succeeded
	301	Moved Permanently	The URL of the requested resource has been changed permanently. The new URL is given in the response.

https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

## http Headers

	Accept	Media type(s) that is/are acceptable for the response.
	Host	The domain name of the server (for virtual hosting), and the TCP port number on which the server is listening. The port number may be omitted if the port is the standard port for the service requested.
Mandatory since HTTP/1.1
	Content-Type	The MIME type of this content

https://en.wikipedia.org/wiki/List_of_HTTP_header_fields


## Cookies

### Http Only

What is HttpOnly?
According to the Microsoft Developer Network, HttpOnly is an additional flag included in a Set-Cookie HTTP response header. Using the HttpOnly flag when generating a cookie helps mitigate the risk of client side script accessing the protected cookie (if the browser supports it).

	Set-Cookie: <name>=<value>[; <Max-Age>=<age>]
	[; expires=<date>][; domain=<domain_name>]
	[; path=<some_path>][; secure][; HttpOnly]

If the HttpOnly flag (optional) is included in the HTTP response header, the cookie cannot be accessed through client side script (again if the browser supports this flag). As a result, even if a cross-site scripting (XSS) flaw exists, and a user accidentally accesses a link that exploits this flaw, the browser (primarily Internet Explorer) will not reveal the cookie to a third party.

If a browser that supports HttpOnly detects a cookie containing the HttpOnly flag, and client side script code attempts to read the cookie, the browser returns an empty string as the result. This causes the attack to fail by preventing the malicious (usually XSS) code from sending the data to an attacker’s website.

https://owasp.org/www-community/HttpOnly