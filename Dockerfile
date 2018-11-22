FROM python:3.7

RUN mkdir -p /home/satya/

COPY . /home/satya/python_sample

WORKDIR /home/satya/python_sample

RUN pip install -r requirements.txt

ENTRYPOINT ['python','./statusCheck/manage.py', 'runserver', '0.0.0.0:8000'] 
