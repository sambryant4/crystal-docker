FROM debian

RUN apt-get update && \
    apt-get install -y build-essential curl libevent-dev libssl-dev libxml2-dev libyaml-dev \
    libgmp-dev git  apt-transport-https wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget https://github.com/crystal-lang/crystal/releases/download/0.21.0/crystal-0.21.0-1-linux-x86_64.tar.gz && \
    mkdir -p /opt && \
    tar -xvzf crystal-0.21.0-1-linux-x86_64.tar.gz -C /opt && \
    ln -nfs /opt/crystal-0.21.0-1/bin/crystal /usr/bin/crystal && \
    ln -nfs /opt/crystal-0.21.0-1/embedded/bin/shards /usr/bin/shards && \
    rm crystal-0.21.0-1-linux-x86_64.tar.gz
