build-local-dev-container dev_container_ver:
  @echo 'Building local-dev-container at tag: {{dev_container_ver}}'
  sudo docker build ./containers/local-dev -t github-user-page-content-local-dev:{{dev_container_ver}}

# defaults to using container version in variable `local_serv_ver_default` but can be overriden
local_serv_ver_default := 'v0.4.0'
local-serve local_serv_ver=local_serv_ver_default:
  sudo docker run \
  -p 127.0.0.1:35729:35729 \
  -p 127.0.0.1:4000:4000 \
  -v $(pwd)/wlieberz-tech-blog:/home/ubuntu:z \
  github-user-page-content-local-dev:{{local_serv_ver}} \
  bundle exec jekyll serve --livereload --host 0.0.0.0
