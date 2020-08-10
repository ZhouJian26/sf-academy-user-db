
FROM mysql:5.7

COPY sql/ docker-entrypoint-initdb.d/

RUN apt-get update -y
RUN apt-get install -y wget

RUN wget https://www.percona.com/downloads/Percona-XtraBackup-2.4/Percona-XtraBackup-2.4.20/binary/debian/buster/x86_64/percona-xtrabackup-24_2.4.20-1.buster_amd64.deb

RUN apt-get install -y libdbd-mysql-perl libcurl4-openssl-dev rsync libcurl4 libev4
RUN dpkg -i percona-xtrabackup-24_2.4.20-1.buster_amd64.deb