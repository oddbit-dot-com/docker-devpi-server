#!/bin/sh

if ! [ -f /root/.devpi/server ]; then
	devpi-init
	devpi-gen-config
fi

exec "$@"
