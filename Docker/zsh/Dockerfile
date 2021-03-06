FROM ubuntu

ENV TZ=America/Mexico_City

# Requirements for Time Zone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone 

# Installation Packages
RUN apt-get update \
    && apt-get install -y -q --allow-unauthenticated \
    build-essential \
    curl \
    fonts-powerline \
    git \
    iputils-ping \
    locales \
    make \
    net-tools \
    sudo \
    tree \
    tzdata \
    vim  \
    wget \ 
    x11-apps \
    zsh \
    zsh-syntax-highlighting \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/* 
  
# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen \
    && locale-gen 

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 

# Add user admin
RUN useradd -m -s /bin/bash admin && \
    usermod -aG sudo admin && \
    passwd -d admin 

USER admin

WORKDIR /home/admin

# Switching from user's bash to zsh 
RUN sudo usermod -s /usr/bin/zsh $(whoami)

# Installing Oh-my-zsh and pluggins
RUN sh -c "$(wget -O- https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

COPY --chown=admin zshrc ./.zshrc

COPY --chown=admin p10k.zsh ./.p10k.zsh 

COPY --chown=admin gitstatusd-linux-x86_64 /home/admin/.cache/gitstatus/gitstatusd-linux-x86_64
