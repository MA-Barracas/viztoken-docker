FROM python:alpine

WORKDIR app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py", "--allow-websocket-origin=viztoken-docker-d2cda7swuq-ew.a.run.app"]

EXPOSE 60000