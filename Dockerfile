FROM debian

RUN apt-get update && \
    apt-get install -y build-essential curl libevent-dev libssl-dev libxml2-dev libyaml-dev \
    libgmp-dev git  apt-transport-https && \
    apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54 && \
    echo "deb https://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list && \
    apt-get update && \
    apt-get install crystal && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
