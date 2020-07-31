# env-templates

## 環境構築系の諸々

| name                                                     | docker-hub                                                   | size    | description                                                  |
| -------------------------------------------------------- | ------------------------------------------------------------ | ------- | ------------------------------------------------------------ |
| [jupyter-notebook](./jupyter-notebook)                   | <a href='https://hub.docker.com/r/syunyooo/jupyter-notebook'> ![](https://img.shields.io/docker/cloud/build/syunyooo/jupyter-notebook.svg?logo=docker&logoColor=white&style=for-the-badge)</a> | 310MB   | ubuntu16.04, python3.7, jupyter1.0.0                         |
| [jupyterlab](./jupyterlab)                               | <a href='https://hub.docker.com/r/syunyooo/jupyterlab'> ![](https://img.shields.io/docker/cloud/build/syunyooo/jupyterlab.svg?logo=docker&logoColor=white&style=for-the-badge)</a> | 1.5 GB  | ubuntu16.04, python3.7, jupyter1.0.0, jupyterlab2.0.1        |
| [jupyterlab-nlp-ja](./jupyterlab-nlp-ja)                 | <a href='https://hub.docker.com/r/syunyooo/jupyterlab-nlp-ja'> ![](https://img.shields.io/docker/cloud/build/syunyooo/jupyterlab-nlp-ja.svg?logo=docker&logoColor=white&style=for-the-badge)</a> | 2.19 GB | (FROM [jupyterlab](https://github.com/shunyooo/env-templates/tree/master/jupyterlab)), mecab-ipadic-neologd, ginza |
| [jupyterlab-pytorch-nvidia](./jupyterlab-pytorch-nvidia) | <a href='https://hub.docker.com/r/syunyooo/jupyterlab-pytorch-nvidia'> ![](https://img.shields.io/docker/cloud/build/syunyooo/jupyterlab-pytorch-nvidia.svg?logo=docker&logoColor=white&style=for-the-badge)</a> | 4.43 GB | ubuntu16.04, cuda:10.0, cudnn7, python3.7, pytorch1.4.0, jupyterlab2.0.1, tensorboard2.1.0 |

## 導入

### 1. 対象のディレクトリに移動

例：

```
cd jupyterlab-nlp-ja
```

### 2. .env を作成

jupyter にログインするためのパスワードを環境変数 NOTEBOOK_PASSWORD に設定する。

.env という名前のファイルを対象ディレクトリの直下に作成し、次のように `NOTEBOOK_PASSWORD=` 以降にパスワードを記述してください。

例: .env

```
# jupyter
NOTEBOOK_PASSWORD=9j3i;fpj)fa85
```

.env には機密情報が含まれるので git を利用する際には .gitignore に .env を必ず記述しておくこと！

### 3. ビルド＆起動

`docker-compose` コマンドでビルド＆起動します。

```
docker-compose up --build
```

変更を反映させるために再ビルドする場合はキャッシュが悪さをすることがあるので次のようにビルドコマンドに `--no-cache` オプションを付けてください。

```
docker-compose build --no-cache
docker-compose up
```

### 4. ブラウザから jupyterlab 画面を開く

コンソールに表示されるリンクから jupyterlab にアクセスできる。
パスワードを求める画面が表示されたら、 .env に記述したパスワードを入力し、ログインする。
