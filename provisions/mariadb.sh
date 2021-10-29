#! /bin/bash

echo -en "\n=== PROVISION: Database ===\n"

curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
apt-get install -y mariadb-server mariadb-client
