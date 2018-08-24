sudo apt-get install python3.4-venv python-pip -y
mkdir flask-project 
cd flask-project 
python3 -m venv venv 
source venv/bin/activate 
pip install Flask
pip install gunicorn
gunicorn --bind 0.0.0.0:5000 wsgi:app
