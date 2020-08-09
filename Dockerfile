
FROM mysql:8.0.21

COPY sql/ docker-entrypoint-initdb.d/

RUN apt-get update && apt-get install -y lsb-release && apt-get clean all

RUN apt-get install -y wget apt-utils

RUN wget https://www.percona.com/downloads/Percona-XtraBackup-LATEST/Percona-XtraBackup-8.0.13/binary/debian/buster/x86_64/percona-xtrabackup-80_8.0.13-1.buster_amd64.deb

RUN apt-get install -y libdbd-mysql-perl libcurl4-openssl-dev rsync libcurl4 libev4

RUN dpkg -i percona-xtrabackup-80_8.0.13-1.buster_amd64.deb