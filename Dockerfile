FROM python:3.9-slim

WORKDIR /app

COPY src/requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY src/App.py App.py

EXPOSE 5000

CMD ["python", "App.py"]

