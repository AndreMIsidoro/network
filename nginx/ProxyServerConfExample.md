```
server {

        listen 80;

        server_name plugnplay-l1.inseincvirtuals.com;

        proxy_buffer_size 8k;

        client_max_body_size 20M;

        error_log /var/log/nginx_error.log debug;


        location / {

                add_header Access-Control-Allow-Origin *;

                add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';

                proxy_set_header X-Forwarded-Host $host;

                proxy_set_header X-Forwarded-Server $host;

                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

                proxy_set_header X-Real-IP $remote_addr;

               proxy_pass http://plugnplay-l1.inseincvirtuals.com:3001;

        }
}
```