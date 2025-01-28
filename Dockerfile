FROM lscr.io/linuxserver/webtop:ubuntu-kde

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python3 python3-pip
RUN apt-get install -y libgl1-mesa-dev
RUN apt-get install -y libglib2.0-0
RUN apt-get -y install fonts-takao

ENV PATH "$PATH:/config/.local/bin"