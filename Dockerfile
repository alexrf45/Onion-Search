FROM debian:latest

RUN apt-get update \
    && apt-get -y install wget curl sudo git python3 python3-pip

RUN groupadd --gid 1005 onion \
    && useradd --home-dir /home/onion --create-home --uid 1005 \
      --gid 1005 --shell /bin/bash --skel /dev/null onion

RUN chown -R onion:onion /home/onion/

RUN echo onion:onion | chpasswd

RUN usermod -aG sudo onion

RUN echo 'onion  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/onion

WORKDIR /home/onion/

USER onion

RUN git clone https://github.com/megadose/OnionSearch.git \
    && cd OnionSearch/ \
    && sudo python3 setup.py install
