
```yaml
server {
          listen 80;
          server_name jenkins.azurewebsites.net;
          location / {
              proxy_pass http://${jenkins_ip}:8080;
              proxy_set_header Host $host;
              proxy_set_header X-Real-IP $remote_addr;
          }
      }
      server {
          listen 80;
          server_name nextcloud.azurewebsites.net;
          location / {
              proxy_pass http://${nextcloud_ip};
              proxy_set_header Host $host;
              proxy_set_header X-Real-IP $remote_addr;
          }
      }
```