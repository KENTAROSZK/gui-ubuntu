# GUIでUbuntu Dockerコンテナを作成する

## 実行コマンド
```shell
docker compose up --build -d
```

## デスクトップ環境への入り方

ブラウザで `http://localhost:3000/ ` を開けばUbuntuのGUI環境が立ち上がる。


## `uv`を使ってプロジェクトの作成方法

- pythonのバージョン：3.11
- プロジェクト名：pj_name

で作成する時

```shell
uv init -p 3.11 pj_name
```

## `uv`で`jupyter lab`を使いたいとき

```shell
uv run --with jupyter jupyter lab
```

### `uv`の中の`notebook`でライブラリをインストールしたいとき

```shell
!uv add pandas
```

のように書く。


## 参考ページ：
- https://github.com/linuxserver/docker-webtop
- https://zenn.dev/mkj/articles/292a70b4f4e5e8