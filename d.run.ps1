docker rm -f blog

$site = "$($PWD)\_site"
docker run --platform=linux --name blog -v "$($site):/usr/share/nginx/html:ro" -d nginx

#docker run --name blog --rm -d --platform=linux reece.io/blog

#docker run --name blog --rm -d -p 35729:35729 -p 4000:4000 --platform=linux reece.io/blog

# $JEKYLL_VERSION = 3.8
# docker run --platform=linux --rm `
#   --volume=$($PWD):/srv/jekyll `
#   -p 35729:35729 -p 4000:4000 `
#   -it jekyll/builder:$JEKYLL_VERSION `
#   jekyll build

$ip = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' blog
Write-Host $ip