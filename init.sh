#!/usr/bin/env bash
echo "Reset ALL DATA !!!?"
sleep 1h

mkdir -p -m 770 "./nginx/ssl/"
cp -f .env.example .env
cp -f .postgres_env.example .postgres_env
cp -f ./nginx/templates/nginx.conf.template.example ./nginx/templates/nginx.conf.template

echo "Copy your certificate files fullchain.pem and privkey.pem to ./nginx/ssl/"
echo "Change the envevironement in files .env , .postgres_env , nginx/templates/nginx.conf.template and start containers docker-compose up -d"
echo "After launching the containers, log in to your application https://your-site:7443 using guacadmin username and password."
echo "Don't forget to change your password after logging in for the first time."
sleep 1h