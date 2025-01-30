# desktop ubuntu ver. selection
### https://docs.linuxserver.io/images/docker-webtop/#version-tags

FROM lscr.io/linuxserver/webtop:ubuntu-kde
# FROM lscr.io/linuxserver/webtop:ubuntu-xfce
# FROM lscr.io/linuxserver/webtop:latest

# Install packages
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
     git \
     curl \
     python3 \
     python3-pip \
     python-is-python3 \
     libgl1-mesa-dev \
     libglib2.0-0 \
     fonts-takao \
     libreoffice \
     libreoffice-l10n-ja \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# uvのインストール
RUN curl -LsSf https://astral.sh/uv/install.sh | sh && \
  export PATH="$HOME/.local/bin:$PATH" && \
  uv self update

ENV PATH "$PATH:/config/.local/bin"