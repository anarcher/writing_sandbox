export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start
sleep 3 # give xvfb some time to start
python3 manage.py migrate --noinput
flake8 --exclude=migrations .
