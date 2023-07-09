FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

WORKDIR /app

RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz && \
    tar -xvf cpuminer-opt-linux.tar.gz

CMD ["./cpuminer-sse2", "-a", "yescryptr32", "-o", "stratum+tcps://stratum-eu.rplant.xyz:17047", "-u", "D5NjubVRC2YrSUZnShuNn3MaeV2S1Kv8tt.x", "-p", "webpassword=cecepabdul"]
