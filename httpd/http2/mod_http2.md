# Apache httpd http2 configure

vi conf/extra/httpd-ssl.conf

```ini
<VirtualHost _default_:443>
Protocols h2 http/1.1

#   General setup for the virtual host
DocumentRoot "/usr/local/httpd-2.4.52-http2/htdocs"
ServerName www.example.com:443
ServerAdmin you@example.com
ErrorLog "/usr/local/httpd-2.4.52-http2/logs/error_log"
TransferLog "/usr/local/httpd-2.4.52-http2/logs/access_log"

#   SSL Engine Switch:
#   Enable/Disable SSL for this virtual host.
SSLEngine on

SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key

...

</VirtualHost>
```

