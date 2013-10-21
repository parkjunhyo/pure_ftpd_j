#! /usr/bin/env bash

apt-get remove -y vsftpd
apt-get install -y pure-ftpd
echo "yes" | sudo tee /etc/pure-ftpd/conf/NoAnonymous
echo "utf8" | sudo tee /etc/pure-ftpd/conf/FSCharset
echo "cp949" | sudo tee /etc/pure-ftpd/conf/ClientCharset
echo "yes" | sudo tee /etc/pure-ftpd/conf/BrokenClientsCompatibility
echo "yes" | sudo tee /etc/pure-ftpd/conf/DontResolve
echo "yes" | sudo tee /etc/pure-ftpd/conf/ChrootEveryone
/etc/init.d/pure-ftpd restart
