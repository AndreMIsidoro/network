**Restart Nginx server**

    /etc/init.d/nginx restart

**Rewrite the Http request**

	remove the /foo from the request

    location /foo 
    { 
    rewrite /foo/(.*) /$1 break; 
    proxy_pass http://localhost:3200; 
    proxy_redirect off; 
    proxy_set_header Host $host; 
    }
