# build

```
docker build . -t yourdockerhub/flask-app:v1.0.0
```

# Manipulate net interface
```
root@bbcfd27b14c5:/app# ifconfig eth0 down
root@bbcfd27b14c5:/app# ifconfig eth0 hw ether 00:22:33:44:55:00
root@bbcfd27b14c5:/app# ifconfig eth0 up
root@bbcfd27b14c5:/app# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 00:22:33:44:55:00  txqueuelen 0  (Ethernet)
        RX packets 31  bytes 4387 (4.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```