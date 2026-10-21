
FROM python:3.11-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . .

RUN pip install --no-cache-dir flask flask-talisman gunicorn

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "__init__:create_app()"]
