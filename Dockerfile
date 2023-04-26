FROM python:3.10-alpine

RUN mkdir app

WORKDIR /app
COPY requirements.txt /app

RUN pip3 install -r requirements.txt

COPY . /app

RUN pip install flask

EXPOSE 8000

CMD ["python3", "app.py"]