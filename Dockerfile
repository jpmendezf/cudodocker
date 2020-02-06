FROM ubuntu:18.04 as base
MAINTAINER JACOBBIEKER <jacob@bieker.tech>

RUN apt-get clean && apt-get update

# Install wget
RUN apt-get install -y --fix-missing --no-install-recommends wget git

# Install cudo miner
RUN wget -O - https://download.cudo.org/keys/pgp/apt.asc > /etc/apt/trusted.gpg.d/cudo.asc
RUN echo -n 'deb [arch=amd64] https://download.cudo.org/repo/apt/ stable main' > /etc/apt/sources.list.d/cudo.list
RUN apt-get update && apt-get install -y --fix-missing cudo-miner

