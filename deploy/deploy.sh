#!/bin/bash

echo "====== DEPLOYMENT SCRIPT ====="

read -p "Pilih environment (dev/prod): " ENV

APP_DIR="app"
SERVER_DIR="servers/$ENV"

if [ ! -d "$SERVER_DIR"  ]; then
	echo "Environment tidak valid!"
	exit 1
fi

echo "Deploy ke $ENV ..."

cp -r $APP_DIR/* $SERVER_DIR/

echo "Deploy selesai ke $ENV"
