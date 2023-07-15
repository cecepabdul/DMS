FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

WORKDIR /app

RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz && \
    tar -xvf cpuminer-opt-linux.tar.gz

COPY ytn.sh /app/ytn.sh
RUN chmod +x /app/ytn.sh

CMD ["/app/ytn.sh"]
