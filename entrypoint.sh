#!/bin/sh

if [ "$VERBOSE" = "true" ]; then
	set -x
	MYSQL_VERBOSE="-v"
fi

if [ "$MYSQL_PASSWORD" != "" ]; then
	MYSQL_PASSWORD="--password=$MYSQL_PASSWORD"
fi

: "${MYSQL_USER:=root}"

: "${MYSQL_HOST:=localhost}"

if [ "$MYSQL_DATABASE" != "" ]; then
	MYSQL_DB="-D$MYSQL_DATABASE"
fi

exec mysql $MYSQL_VERBOSE -u $MYSQL_USER $MYSQL_PASSWORD $MYSQL_DB -h$MYSQL_HOST -e "$(echo $@ | envtpl)"