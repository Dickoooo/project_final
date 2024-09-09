FROM python:3.9-slim

WORKDIR /app

# Copier requirements.txt avant d'installer les dépendances
COPY requirements.txt /app/
COPY app.py /app/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "app.py"]
