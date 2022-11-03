docker exec -it postgres psql -U postgres qgisdb

CREATE EXTENSION postgis;

## 確認

### port どうなってる？

docker compose -f docker-compose.yml ps

### extension 入ってるかチェック

SELECT \* FROM pg_available_extensions;
