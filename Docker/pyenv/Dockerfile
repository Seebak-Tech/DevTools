FROM seebaktec/tmux:latest

USER root

# Installing packages
RUN apt-get update \
    && apt-get install -y -q --allow-unauthenticated \
    libbz2-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    llvm \
    xz-utils \
    zlib1g-dev \
    liblzma-dev \
    python-openssl \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* 

USER admin

COPY --chown=admin zshrc ./.zshrc

COPY --chown=admin zprofile ./.zprofile

ENV HOME=/home/admin \
    PATH=/home/admin/.pyenv/shims:/home/admin/.pyenv/bin:$HOME/.local/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:.

# Installing pyenv and plugins
RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash