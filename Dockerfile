FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5001

ENTRYPOINT [ "python", "app.py" ]