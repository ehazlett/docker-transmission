FROM debian:jessie
RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y --no-install-recommends transmission-daemon
COPY entrypoint.sh /docker-entrypoint.sh
EXPOSE 9091
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD []
