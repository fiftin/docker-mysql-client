#!/bin/sh

if [ "$VERBOSE" = "true" ]; then
	set -x
	MYSQL_VERBOSE="-v"
fi

if [ "$MYSQL_PASSWORD" != "" ]; then
	MYSQL_PASSWORD="-p$MYSQL_PASSWORD"
fi

: "${MYSQL_USER:=root}"

: "${MYSQL_HOST:=localhost}"

exec mysql $MYSQL_VERBOSE -u $MYSQL_USER $MYSQL_PASSWORD -h$MYSQL_HOST -e "$(echo $@ | envtpl)"