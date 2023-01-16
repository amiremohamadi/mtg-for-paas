FROM alpine:latest

EXPOSE 443

WORKDIR /app
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]
