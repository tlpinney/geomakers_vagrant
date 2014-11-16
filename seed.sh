echo "Installing"
sudo apt-get update
sudo apt-get install -y apache2-dev curl vim git postgresql libpq-dev postgresql-server-dev-all python python-dev python-pip
sudo useradd geomakers
sudo -u postgres psql -c "CREATE USER geomakers;"
sudo -u postgres psql -c "CREATE DATABASE geomakers;"
sudo -u postgres psql -c "ALTER DATABASE geomakers OWNER TO geomakers;"
sudo pip install psycopg2
sudo pip install django 
sudo pip install beautifulsoup4
sudo -u geomakers git clone http://github.com/geomakers/geomakers.git /home/geomakers/geomakers
sudo -u geomakers python /home/geomakers/geomakers/windwaker/manage.py makemigrations
sudo -u geomakers python /home/geomakers/geomakers/windwaker/manage.py migrate
