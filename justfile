build-local-dev-container dev_container_ver:
  @echo 'Building local-dev-container at tag: {{dev_container_ver}}'
  sudo docker build ./containers/local-dev -t github-user-page-content-local-dev:{{dev_container_ver}}

local-serve:
  sudo docker run -p 127.0.0.1:35729:35729 -p 127.0.0.1:4000:4000 -v $(pwd)/wlieberz-tech-blog:/home/ubuntu:z github-user-page-content-local-dev:v0.4.0 bundle exec jekyll serve --livereload --host 0.0.0.0
