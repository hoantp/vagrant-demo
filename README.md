# Vagrant Demo

## Prepare

- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Usage

```sh
# Install vbguest for mouting
$ vagrant plugin install vagrant-vbguest

# Run
$ vagrant up
$ vagrant ssh
```

```sh
# Db secure check
$ sudo mysql_secure_installation

# Create user for db
$ sudo mariadb

# Inside mariadb cli with user 'admin' and password '123@Abc' (tobe change)
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY '123@Abc' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```
