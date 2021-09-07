docker run --name mynginx1 -dp 8081:80 mynginx
docker tag mynginx:latest pawankhanaparazymr/mynginx
docker push pawankhanaparazymr/mynginx
