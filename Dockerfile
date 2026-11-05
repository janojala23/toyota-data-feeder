FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY feeder.py .
COPY toyota_data.csv .
COPY ca.crt .

CMD ["python", "feeder.py"]