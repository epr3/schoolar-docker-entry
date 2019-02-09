FROM python:3.7

RUN apt-get update && apt-get install -y wget

ADD . /python-app
WORKDIR /python-app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
