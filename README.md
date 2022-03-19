# Docker Build
```
git clone https://github.com/marcellowy/docker-ocserv.git
sudo docker build --rm -t ocserv:latest .
```

# Docker Run
```
sudo docker run --privileged -p 30111:443 -itd ocserv:latest
```

# ocserv.conf
Your cert file:
```
sudo docker run --privileged -v /path/your/ocserv:/etc/ocserv -itd ocserv:latest

- /etc/ocserv
	- cert
		ca-cert.pem
		ca-key.pem
		server-cert.pem
		server-key.pem
	- group
		defualt
	account
	dh.pem
	ocserv.conf
```

# Account
```
// add count
ocpasswd -c /etc/ocserv/ocpasswd -g [group] [username]
// Lock
ocpasswd -c /etc/ocserv/ocpasswd -l [group] [username]
// Unlock
ocpasswd -c /etc/ocserv/ocpasswd -u [group] [username]
// Delete
ocpasswd -c /etc/ocserv/ocpasswd -d [group] [username]
```
