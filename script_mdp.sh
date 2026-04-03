#!/bin/bash
echo "--- Création mot de passe Admin de Graylog ---"
echo "GRAYLOG_PASSWORD_SECRET=\"$(pwgen -N 1 -s 96)\"" >> ./.env
read -s -p "Mot de passe admin Graylog : " MDPADMIN
echo "GRAYLOG_ROOT_PASSWORD_SHA2=\"$(echo -n '$MDPADMIN' | shasum -a 256 | awk '{print $1}')\"" >> ./.env
