#!/bin/bash

# distディレクトリの作成
mkdir -p dist

# publicディレクトリが存在し、かつ中身がある場合のみコピーを実行
if [ -d "public" ] && [ "$(ls -A public 2>/dev/null)" ]; then
    cp -r public/* dist
fi

# assetsディレクトリをdist/worker-assetsにコピー
cp -r assets dist/worker-assets

echo "[INFO] dist directory setup completed"
