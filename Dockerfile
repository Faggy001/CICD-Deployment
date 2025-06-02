FROM python:3.9-slim

WORKDIR /app

COPY src/requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY src/app.py app.py

EXPOSE 5000

CMD ["python", "app.py"]

