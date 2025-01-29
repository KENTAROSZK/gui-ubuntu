# ベースイメージとしてUbuntuを指定
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV USER=root
ENV HOME=/root
ENV DISPLAY=:1
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    tigervnc-common \
    tigervnc-tools \
    novnc \
    websockify \
    supervisor \
    net-tools \
    curl \
    wget \
    dbus \
    dbus-x11 \
    x11-xserver-utils \
    xfonts-base \
    xfonts-100dpi \
    xfonts-75dpi \
    fonts-noto-cjk \
    language-pack-ja \
    task-japanese \
    xauth \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 日本語環境の設定
RUN locale-gen ja_JP.UTF-8

# ディレクトリとファイルの作成
RUN mkdir -p /root/.vnc /var/log/supervisor /usr/share/novnc
RUN touch /root/.Xauthority

# VNCサーバーの設定
RUN mkdir -p ~/.vnc && \
    echo "#!/bin/bash\nxrdb $HOME/.Xresources\nstartxfce4 &" > ~/.vnc/xstartup && \
    chmod +x ~/.vnc/xstartup && \
    echo "password" | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd

# noVNCのセットアップ
RUN cd /usr/share && \
    git clone https://github.com/novnc/noVNC.git novnc && \
    cd novnc && \
    git checkout v1.4.0 && \
    ln -s vnc.html index.html && \
    cd .. && \
    git clone https://github.com/novnc/websockify.git websockify && \
    cd websockify && \
    git checkout v0.11.0

# スーパーバイザーの設定
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# ポート公開
EXPOSE 80 5901

# 起動スクリプトの設定
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]