#!/usr/bin/env bash
echo "Reset ALL DATA !!!?"
sleep 1h

rm -rf ./conf/
rm -rf ./nginx/

mkdir -p -m 770 "./conf/guacamole/"
mkdir -p -m 770 "./nginx/ssl/"
mkdir -p -m 770 "./nginx/templates/"
cp -f "./conf/guacamole/guacamole.conf" "./conf/guacamole/"
cp -f .env.example .env
cp -f .postgres_env.example .postgres_env

echo "Change the envevironement in files .env , .postgres_env and start containers docker-compose up -d"
echo "After launching the containers, log in to your application https://your-site-name:7443 using guacadmin username and password."
echo "Don't forget to change your password after logging in for the first time."
sleep 1h