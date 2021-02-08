#!/bin/sh

if ! [ -f /root/.devpi/server ]; then
	devpi-init
fi

exec "$@"
