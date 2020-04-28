FROM postgres:9.6.3

ADD ./init.sh /docker-entrypoint-initdb.d/init.sh
RUN  chmod +x /docker-entrypoint-initdb.d/init.sh