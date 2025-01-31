# desktop ubuntu ver. selection
### https://docs.linuxserver.io/images/docker-webtop/#version-tags

FROM lscr.io/linuxserver/webtop:ubuntu-kde
# FROM lscr.io/linuxserver/webtop:ubuntu-xfce <-- XFCE Ubuntu
# FROM lscr.io/linuxserver/webtop:latest # <-- XFCE Alpine

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
     ca-certificates \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

#====================================================================
# uvのインストールと移動
RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
  && mv /config/.local/bin/uv /usr/local/bin/uv \
  && mv /config/.local/bin/uvx /usr/local/bin/uvx \
  && chmod +x /usr/local/bin/uv /usr/local/bin/uvx

# 環境変数 PATH を設定
ENV PATH="/usr/local/bin:${PATH}"
#====================================================================