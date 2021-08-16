FROM python:3.7.3-stretch

WORKDIR /app
COPY . app.py /app/
RUN pip install --upgrade pip==21.1.3  &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
