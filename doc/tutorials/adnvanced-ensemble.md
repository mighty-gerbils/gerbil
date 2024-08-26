# Advanced Actor Ensembles

## Ensemble Domains

TODO words

## Supervised Actor Ensembles

TODO words

## Case Study: The Gerbil httpd

TODO words

### Using a Standalone httpd
```
1$ pushd site/project
1$ gerbil build
1$ popd

1$ pushd site
1$ gerbil httpd -G project/.gerbil config --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

1$ gerbil httpd -G project/.gerbil config --print
config:
httpd-v0
root:
"www"
listen:
("0.0.0.0:8080")
handlers:
(("/handler" . :demo/handler))
enable-servlets:
#t

1$ gerbil httpd -G project/.gerbil server
...

2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler
```

### Using an httpd ensemble

```
1$ pushd site
1$ gerbil httpd -G project/.gerbil config --ensemble --ensemble-root root --ensemble-domain /test --worker-domain /test/www -n 2 --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

1$ gerbil httpd -G project/.gerbil config --ensemble --print
config:
ensemble-v0
roles:
((httpd server-config:
        (config:
         ensemble-server-v0
         application:
         ((httpd config:
                 httpd-v0
                 root:
                 "www"
                 listen:
                 ("0.0.0.0:8080")
                 handlers:
                 (("/handler" . :demo/handler))
                 enable-servlets:
                 #t))
         env:
         #f)
        exe:
        "gerbil"
        prefix:
        ("httpd" "server")
        policy:
        restart))
preload:
(workers: ((/test/www prefix: httpd role: httpd servers: 2)))
domain:
/test
root:
"root"

1$ gerbil httpd -G project/.gerbil ensemble
...

2$ ps auxw | grep gerbil
2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler

```

## Local Ensembles
TODO words

```
1$ gerbil httpd -G env/local config  --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'
1$ gerbil ensemble -G env/local config ensemble -D '/test' --root root
1$ gerbil ensemble -G env/local config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd

1$ gerbil ensemble -G env/local config ensemble --view --pretty
config:
ensemble-v0
domain:
/test
root:
"root"
roles:
((httpd exe:
        "gerbil"
        prefix:
        ("httpd" "server")
        policy:
        restart
        server-config:
        (config:
         ensemble-server-v0
         env:
         "www"
         application:
         ((httpd config:
                 httpd-v0
                 root:
                 "www"
                 listen:
                 ("0.0.0.0:8080")
                 handlers:
                 (("/handler" . :demo/handler))
                 enable-servlets:
                 #t)))))


1$ gerbil ensemble -G env/local supervisor
...

2$ gerbil ensemble -G env/local env supervisor '(supervisor . /test)'
2$ gerbil ensemble -G env/local env known-servers --add  '(supervisor . /test)'
2$ gerbil ensemble -G env/local control list-servers --pretty

2$ gerbil ensemble -G env/local control get-ensemble-config --pretty
(config:
 ensemble-v0
 domain:
 /test
 root:
 "root"
 services:
 (supervisor:
  (config:
   ensemble-server-v0
   domain:
   /test
   identifier:
   (supervisor . /test)
   registry:
   (registry . /test)
   cookie:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/env/local/ensemble/cookie"
   admin:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/env/local/ensemble/admin.pub"
   role:
   supervisor
   exe:
   "gerbil"
   args:
   ("ensemble" "supervisor")
   root:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/"
   log-level:
   INFO
   log-dir:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/root/log/test/supervisor"
   log-file:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/root/log/test/supervisor/server.log"
   addresses:
   ((unix: "dellicious" "/tmp/ensemble/test/supervisor.sock"))
   known-servers:
   (((registry . /test) (unix: "dellicious" "/tmp/ensemble/test/registry.sock"))))
  registry:
  (config:
   ensemble-server-v0
   identifier:
   (registry . /test)
   role:
   registry
   exe:
   "gerbil"
   args:
   ("ensemble" "registry" "(registry . /test)")))
 roles:
 ((httpd exe:
         "gerbil"
         prefix:
         ("httpd" "server")
         policy:
         restart
         server-config:
         (config:
          ensemble-server-v0
          env:
          "www"
          application:
          ((httpd config:
                  httpd-v0
                  root:
                  "www"
                  listen:
                  ("0.0.0.0:8080")
                  handlers:
                  (("/handler" . :demo/handler))
                  enable-servlets:
                  #t))))))


2$ cd site/project/.gerbil/
2$ tar czvf ../../env-www.tar.gz lib

2$ cd site
2$ tar czvf fs-www.tar.gz www

2$ gerbil ensemble -G env/local control upload --fs site/fs-www.tar.gz ""
2$ gerbil ensemble -G env/local control upload --env site/env-www.tar.gz www
2$ gerbil ensemble -G env/local control start-workers -d /test/www httpd httpd 2
2$ gerbil ensemble -G env/local control list-servers --pretty

2$ ps auxw | grep gerbil
2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler

2$ gerbil ensemble -G env/local control shutdown
```

## Distributed Ensembles
TODO words

```
1$ gerbil ensemble -G env/private ca setup --domain demo.ensemble.internal
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode1)'
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode2)'
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode3)'

1$ gerbil ensemble -G env/linode1 config ensemble -D /demo/linode1 --root root --public 0.0.0.0:4999
1$ gerbil ensemble -G env/linode2 config ensemble -D /demo/linode2 --root root --public 0.0.0.0:4999
1$ gerbil ensemble -G env/linode3 config ensemble -D /demo/linode3 --root root --public 0.0.0.0:4999

1$ gerbil ensemble -G env/private package -o env/linode1.tar.gz -C env/linode1/ensemble/config '(supervisor . /demo/linode1)'
1$ gerbil ensemble -G env/private package -o env/linode2.tar.gz -C env/linode2/ensemble/config '(supervisor . /demo/linode2)'
1$ gerbil ensemble -G env/private package -o env/linode3.tar.gz -C env/linode3/ensemble/config '(supervisor . /demo/linode3)'

1$ scp env/linode1.tar.gz root@172.233.56.134:
1$ scp env/linode2.tar.gz root@172.233.56.175:
1$ scp env/linode3.tar.gz root@172.233.56.211:

# linode1
2$ ssh root@172.233.56.134
2$ mkdir env
2$ pushd env
2$ tar xzvf ../linode1.tar.gz
2$ popd
2$ export PATH=/opt/gerbil/bin:$PATH
2$ nohup gerbil ensemble -G env supervisor
...

# linode2
3$ ssh root@172.233.56.175
3$ ...

# linode3
4$ ssh root@172.233.56.211
4$ ...

1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode1)' '(tls: "172.233.56.134:4999")'
1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode2)' '(tls: "172.233.56.175:4999")'
1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode3)' '(tls: "172.233.56.211:4999")'

1$ gerbil httpd -G env/tmp config  --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'
1$ gerbil ensemble -G env/tmp/linode1 config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd -C env/tmp/config/httpd

$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode1)' env/tmp/linode1/ensemble/config
$ gerbil ensemble -G env/private control get-ensemble-config -S '(supervisor . /demo/linode1)' --pretty
(config:
 ensemble-v0
 domain:
 /demo/linode1
 root:
 "root"
 public-address:
 "0.0.0.0:4999"
 services:
 (supervisor:
  (config:
   ensemble-server-v0
   domain:
   /demo/linode1
   identifier:
   (supervisor . /demo/linode1)
   registry:
   (registry . /demo/linode1)
   cookie:
   "/root/env/ensemble/cookie"
   admin:
   "/root/env/ensemble/admin.pub"
   role:
   supervisor
   exe:
   "gerbil"
   args:
   ("ensemble" "supervisor")
   root:
   "/root/"
   log-level:
   INFO
   log-dir:
   "/root/root/log/demo/linode1/supervisor"
   log-file:
   "/root/root/log/demo/linode1/supervisor/server.log"
   addresses:
   ((unix: "localhost" "/tmp/ensemble/demo/linode1/supervisor.sock")
    (tls: "0.0.0.0:4999"))
   known-servers:
   (((registry . /demo/linode1)
     (unix: "localhost" "/tmp/ensemble/demo/linode1/registry.sock"))))
  registry:
  (config:
   ensemble-server-v0
   identifier:
   (registry . /demo/linode1)
   role:
   registry
   exe:
   "gerbil"
   args:
   ("ensemble" "registry" "(registry . /demo/linode1)")))
 roles:
 ((httpd exe:
         "gerbil"
         prefix:
         ("httpd" "server")
         policy:
         restart
         server-config:
         (config:
          ensemble-server-v0
          env:
          "www"
          application:
          ((httpd config:
                  httpd-v0
                  root:
                  "www"
                  listen:
                  ("0.0.0.0:8080")
                  handlers:
                  (("/handler" . :demo/handler))
                  enable-servlets:
                  #t))))))


1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode1)' --fs site/fs-www.tar.gz ""
1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode1)' --env site/env-www.tar.gz www

1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode1)' -d www httpd httpd 2
(((httpd-1 . /demo/linode1/www) . 10099) ((httpd-0 . /demo/linode1/www) . 10098))

1$ gerbil ensemble -G env/private control list-servers  -S '(supervisor . /demo/linode1)' --pretty
(((httpd-0 . /demo/linode1/www) 10098 running)
 ((httpd-1 . /demo/linode1/www) 10099 running)
 ((registry . /demo/linode1) 9987 running))

1$ curl http://172.233.56.134:8080/
1$ curl http://172.233.56.134:8080/handler
1$ curl http://172.233.56.134:8080/servlets/hello.ss

1$ gerbil ensemble -G env/tmp/linode2 config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd -C env/tmp/config/httpd

$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode2)' env/tmp/linode2/ensemble/config
$ gerbil ensemble -G env/private control get-ensemble-config -S '(supervisor . /demo/linode2)' --pretty

1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode2)' --fs site/fs-www.tar.gz ""
1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode2)' --env site/env-www.tar.gz www
1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode2)' -d www httpd httpd 2
1$ gerbil ensemble -G env/private control list-servers  -S '(supervisor . /demo/linode2)' --pretty

1$ curl http://172.233.56.175:8080/
1$ curl http://172.233.56.175:8080/handler
1$ curl http://172.233.56.175:8080/servlets/hello.ss

1$ cd rlb
1$ gerbil build

1$ cat > env/tmp/config/rlb
config: rlb-v0
listen: "0.0.0.0:8080"
proxies: ("172.233.56.134:8080" "172.233.56.175:8080")
^D

1$ gerbil ensemble -G env/tmp/linode3 config role --role rlb --exe rlb --policy restart --env rlb --application rlb -C env/tmp/config/rlb

1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode3)' --exe rlb/.gerbil/bin/rlb rlb
1$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode3)' env/tmp/linode3/ensemble/config
1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode3)' -d www rlb rlb 2

1$ curl http://172.233.56.211:8080/
1$ curl http://172.233.56.211:8080/servlets/hello.ss

1$ gerbil ensemble -G env/private ping -s -S '(supervisor . /demo/linode3)' '(rlb-0 . /demo/linode3/www)'

1$ gerbil ensemble -G env/private repl -s -S '(supervisor . /demo/linode3)' '(rlb-0 . /demo/linode3/www)'
```
