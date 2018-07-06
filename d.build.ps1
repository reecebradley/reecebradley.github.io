#docker pull --platform=linux ruby:2.5

#docker build --pull --no-cache --platform=linux -t bradleyr/blog -f .\Dockerfile .

docker build --no-cache --platform=linux -t reece.io/blog -f .\Dockerfile .