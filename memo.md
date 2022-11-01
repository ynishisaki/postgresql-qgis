# コンテナへ接続

docker exec -it postgres /bin/sh

# psql で接続確認

psql -h localhost -U postgres
