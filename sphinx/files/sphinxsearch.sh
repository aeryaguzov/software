#!/bin/sh

PIDFILE="/var/run/sphinxsearch/searchd.pid"
EXEC_PATH="/usr/bin/searchd"
EXEC_PARAMS="-c /etc/sphinxsearch/sphinx.conf"

case "$1" in
  start)
    echo "Starting sphinxsearch"
    start-stop-daemon -S --exec "$EXEC_PATH" -- $EXEC_PARAMS
    echo "OK"
    ;;
  stop)
    echo "Stopping sphinxsearch"
    start-stop-daemon -K -p "$PIDFILE" --retry TERM/1/TERM/1/TERM/4/KILL --exec "$EXEC_PATH"
    echo "OK"
    ;;
  restart)
    if [ -f "$(PID_FILE)" ]; then
      $0 stop
      sleep 1
    fi
    $0 start
    ;;
  *)
    echo "usage: $0 {start|stop|restart}" >&2
    exit 1
    ;;
esac

exit 0
