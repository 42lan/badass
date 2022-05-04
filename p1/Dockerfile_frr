FROM frrouting/frr:latest

RUN \
  echo 'service integrated-vtysh-config' > /etc/frr/vtysh.conf && \
  sed -i \
    -e 's/bgpd=no/bgpd=yes/g' \
    -e 's/ospfd=no/ospfd=yes/g' \
    -e 's/isisd=no/isisd=yes/g' \
  /etc/frr/daemons
