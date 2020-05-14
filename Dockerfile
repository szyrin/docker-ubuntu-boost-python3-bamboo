FROM szyrin/ubuntu-boost-python3:latest
RUN groupadd -g 1003 bamboo
RUN useradd --gid bamboo --create-home --uid 1003 bamboo
USER bamboo
