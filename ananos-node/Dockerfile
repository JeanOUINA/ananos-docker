FROM --platform=amd64 ubuntu:latest

WORKDIR /app

COPY . .

RUN chmod +x /app/ananos_node
RUN chmod +x /app/run.sh

CMD /app/run.sh