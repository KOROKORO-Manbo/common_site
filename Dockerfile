# Pythonの公式イメージを使う
FROM python:3.11

# Pythonがキャッシュ（pyc）を作らないようにし、ログをリアルタイムで表示する設定
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# コンテナ内の作業ディレクトリを /code に設定
WORKDIR /code

# 依存ライブラリ（requirements.txt）をコピーしてインストール
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

# ローカルのプロジェクトファイルをすべてコンテナにコピー
COPY . /code/