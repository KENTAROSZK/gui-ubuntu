#!/bin/bash
# start.sh

# 既存のプロセスをクリーンアップ
killall -9 Xtightvnc 2>/dev/null || true
killall -9 websockify 2>/dev/null || true
rm -rf /tmp/.X* /tmp/.x* /tmp/.vnc* /root/.vnc/*.log /root/.vnc/*.pid

# Xauthorityの設定
xauth generate :1 . trusted

# DBusの起動
mkdir -p /var/run/dbus
dbus-daemon --system

# VNCサーバーの起動
vncserver :1 -geometry ${VNC_RESOLUTION:-1280x800} -depth 24 -localhost no -SecurityTypes None

# noVNCの起動
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 80 &

# スーパーバイザーの起動
exec /usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf