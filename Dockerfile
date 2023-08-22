FROM golang:1.20-alpine AS proxy

WORKDIR /app
COPY . .

RUN go build 

FROM python:3.9

WORKDIR /app

COPY --from=proxy /app/poe-openai-proxy /app

COPY . .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["/app/startup.sh"]