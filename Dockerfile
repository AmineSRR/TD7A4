FROM python:3.9-alpine

WORKDIR /app
COPY . .

RUN apk add --no-cache mongodb-tools && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

