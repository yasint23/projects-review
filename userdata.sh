#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/yasint23/projects-review.git
cd /home/ubuntu/projects-review
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/projects-review/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80




