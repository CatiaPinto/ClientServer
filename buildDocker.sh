docker build -t serverimage:v1 .
docker run -d -p 8087:8087 serverimage:v1
