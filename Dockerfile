FROM python:3.7

RUN mkdir -p /home/satya/

COPY . /home/satya/python_sample

WORKDIR /home/satya/python_sample/

RUN pip3 install -r requirements.txt

RUN pwd

RUN ls -l

ENTRYPOINT ["python3", "/home/satya/python_sample/statusCheck/manage.py", "runserver", "0.0.0.0:8000"]
