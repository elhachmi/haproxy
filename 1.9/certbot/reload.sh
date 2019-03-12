haproxy -W -db -f /usr/local/etc/haproxy/haproxy.cfg -p /run/haproxy.pid  -sf $(cat /run/haproxy.pid) &
