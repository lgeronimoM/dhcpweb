#!/bin/bash

source ./venv/bin/activate
sudo chown ansadmin.ansadmin * -R
sudo chown ansadmin.ansadmin /var/log/Aplicaciones -R
cd bin
pip3 install -r administradordhcp/requirements.txt
export FLASK_ENV=production
#export FLASK_APP=administradordhcp/main.py
#flask run
python3 administradordhcp/main.py 
