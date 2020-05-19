FROM szyrin/ubuntu-boost-python3:latest
RUN apt-get install -y python3-pip
RUN groupadd -g 1003 bamboo
RUN useradd --gid bamboo --create-home --uid 1003 bamboo
USER bamboo
RUN pip3 install -U pytest gcovr cobertura-clover-transform
