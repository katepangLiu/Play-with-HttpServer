## nghttp2

```shell
wget https://codeload.github.com/nghttp2/nghttp2/tar.gz/refs/tags/v1.47.0

tar -zxf nghttp2-1.47.0.tar.gz
cd nghttp2-1.47.0
./configure
make && make install
```



## httpd

```shell
wget https://dlcdn.apache.org//httpd/httpd-2.4.52.tar.gz
./configure --prefix=/usr/local/httpd-2.4.52-http2 --eprefix=/usr/local/httpd-2.4.52-http2 --enable-ssl --enable-so --enable-http2 --enable-proxy-http2
make && make install

ll /usr/local/httpd-2.4.52-http2/modules |grep http2
-rwxr-xr-x. 1 root root 405952 Mar  7 15:55 mod_http2.so
-rwxr-xr-x. 1 root root 102968 Mar  7 15:55 mod_proxy_http2.so
```

