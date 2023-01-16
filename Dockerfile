FROM alpine:latest

EXPOSE 80

WORKDIR /app
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]
