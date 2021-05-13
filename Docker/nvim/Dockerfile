FROM seebaktec/pyenv:latest

USER root

# Install packages
RUN apt-get update \
    && apt-get install -y -q --allow-unauthenticated \
    autoconf \
    automake \
    cmake \
    fish \
    g++ \
    gettext \
    libtool \
    libtool-bin \
    lua5.3 \
    ninja-build \
    pkg-config \
    unzip \
    xclip \
    xfonts-utils \
    xauth \
    openssh-server \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* 

# Configuation ssh
RUN mkdir /run/sshd \
    && echo "X11UseLocalhost no">>/etc/ssh/sshd_config

# Installing neovim
RUN cd /usr/src                                                   \
    && git clone https://github.com/neovim/neovim.git             \
    && cd neovim                                                  \
    && make CMAKE_BUILD_TYPE=RelWithDebInfo                       \
            CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/usr/local" \
    && make install                                               \
    && rm -r /usr/src/neovim

USER admin

ENV HOME=/home/admin \
    PYENV_ROOT=$HOME/.pyenv \
    PATH=/home/admin/.pyenv/shims:/home/admin/.pyenv/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:.  \
    PYTHON3_HOST_PROG=/home/admin/.pyenv/versions/neovim3/bin/python \
    PYTHON_HOST_PROG=/home/admin/.pyenv/versions/neovim2/bin/python \
    PYENV_VIRTUALENV_DISABLE_PROMPT=1

ARG PYTHON2_VERSION=2.7.18

ARG PYTHON3_VERSION=3.9.2

WORKDIR $HOME

COPY --chown=admin zshrc ./.zshrc

# Installing Spacevim
RUN pyenv install $PYTHON2_VERSION \
    && pyenv install $PYTHON3_VERSION \
    && pyenv global $PYTHON3_VERSION $PYTHON2_VERSION \
    && pyenv rehash \
    && pyenv virtualenv $PYTHON2_VERSION neovim2 \
    && pyenv virtualenv $PYTHON3_VERSION neovim3 \
    && eval "$(pyenv init -)" \
    && eval "$(pyenv virtualenv-init -)" \
    && pyenv activate neovim2 \
    && pip install --upgrade pip \
    && pip install neovim \
    && pyenv activate neovim3 \
    && pip install --upgrade pip \
    && pip install neovim \
    && mkdir -p $HOME/.config $HOME/.SpaceVim.d \
    && curl -sLf https://spacevim.org/install.sh | bash

COPY --chown=admin myspacevim.vim $HOME/.SpaceVim.d/autoload/myspacevim.vim 

COPY --chown=admin init.toml $HOME/.SpaceVim.d/init.toml

# Library compilation and touch to update the date of the init.toml
RUN touch $HOME/.SpaceVim.d/init.toml \
    && make -C $HOME/.SpaceVim/bundle/vimproc.vim \
    && nvim --headless +'UpdateRemotePlugins' +"q!"  

COPY --chown=admin rplugin.vim /home/admin/.local/share/nvim/rplugin.vim
