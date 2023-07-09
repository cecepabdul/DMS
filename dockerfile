FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

WORKDIR /app

RUN wget https://github.com/Beeppool/miner/releases/download/0.6.0/beepminer-0.6.0.zip && \
    unzip beepminer-0.6.0.zip && \
    cd beepminer-0.6.0 && \
    chmod +x miner

CMD ["./beepminer-0.6.0/miner", "--wallet-address=NQ39 0D03 FKRH 13LF A6V7 DQ8H 729S ABG8 XL5P", "--pool=pool.acemining.co:8443", "--deviceLabel=cloud", "--mode=dumb"]
