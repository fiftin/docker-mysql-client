# mysql-client

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/banzaicloud/mysql-client/) 

Docker image with a MySQL client.

This Docker image is based on Alpine Linux 

From image: alpine:3.7

Mysql client: Ver 15.1 Distrib 10.1.32-MariaDB, for Linux (x86_64) using readline 5.1

## Environment Variables

Environment variable below are configurable to control how to execute mysq-client:

### `MYSQL_USERNAME`

Specified mysql user for connection

### `MYSQL_PASSWORD`

Specified mysql password for mysql connection

### `VERBOSE`

Set verbose mode

## Usage

```
$ docker run -e MYSQL_USERNAME -e MYSQL_PASSWORD -h mysql -h <host> -e "show databases"
```