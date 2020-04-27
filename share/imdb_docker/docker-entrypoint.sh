#!/bin/sh

USER=postgres
DBNAME=imdb
RESTOREFILELOCATION=/moviedata_dump.tar

if psql -lqt | cut -d \| -f 1 | grep -qw $DBNAME; then
  echo "DB exists"
  exec "$@"
else
  psql -U $USER -c "CREATE DATABASE $DBNAME"
  pg_restore -U $USER -d $DBNAME -1 $RESTOREFILELOCATION
#  echo "imdb data seeded"
  exec "$@"
fi

