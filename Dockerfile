FROM debian:10

ADD damn.sh /root/

WORKDIR /root/

ENTRYPOINT ["/root/damn.sh"]
