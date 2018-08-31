FROM python:3.6-alpine

WORKDIR /app

COPY logger.py .

ENV LOG_LEVEL INFO

ENTRYPOINT ["python", "logger.py"]