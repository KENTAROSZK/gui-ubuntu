# desktop ubuntu ver. selection
### https://docs.linuxserver.io/images/docker-webtop/#version-tags

FROM lscr.io/linuxserver/webtop:ubuntu-kde
# FROM lscr.io/linuxserver/webtop:ubuntu-xfce
# FROM lscr.io/linuxserver/webtop:latest


# ==========================================
# RUN apt-get update && apt-get upgrade -y
# RUN apt-get install -y git python3 python3-pip
# RUN apt-get install -y libgl1-mesa-dev
# RUN apt-get install -y libglib2.0-0
# ------------------------------------------
# 日本語
# RUN apt-get -y install fonts-takao
# LibreOffice のインストール (日本語ローカライズ含む)
# RUN apt-get update && apt-get install -y \
#     libreoffice \
#     libreoffice-l10n-ja
# ------------------------------------------
# ==========================================

RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
     git \
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


ENV PATH "$PATH:/config/.local/bin"