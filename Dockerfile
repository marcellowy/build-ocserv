FROM fedora
RUN yum -y install ocserv iptables
COPY start.sh /usr/bin/start.sh
COPY etc /etc
RUN chmod +x /usr/bin/start.sh
RUN ocserv -v
ENTRYPOINT ["/usr/bin/start.sh"]
