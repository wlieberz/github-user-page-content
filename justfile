build-local-dev-container dev_container_ver:
  @echo 'Building local-dev-container at tag: {{dev_container_ver}}'
  sudo docker build ./ -t github-user-page-content-local-dev:{{dev_container_ver}} -f containers/local-dev/Dockerfile

# defaults to using container version in variable `local_serv_ver_default` but can be overriden
local_serv_ver_default := 'v0.5.1'
local-serve local_serv_ver=local_serv_ver_default:
  sudo docker run \
  -p 127.0.0.1:35729:35729 \
  -p 127.0.0.1:4000:4000 \
  -v $(pwd)/wlieberz-tech-blog:/home/ubuntu/wlieberz-tech-blog:z \
  -w /home/ubuntu/wlieberz-tech-blog \
  github-user-page-content-local-dev:{{local_serv_ver}} \
  bundle exec jekyll serve --livereload --host 0.0.0.0

build-prod-site local_serv_ver=local_serv_ver_default:
  sudo docker run \
  -e JEKYLL_ENV=production \
  -v $(pwd)/wlieberz-tech-blog:/home/ubuntu/wlieberz-tech-blog:z \
  -w /home/ubuntu/wlieberz-tech-blog \
  github-user-page-content-local-dev:{{local_serv_ver}} \
  bundle exec jekyll build
  @echo '#### Production site built and output to: wlieberz-tech-blog/_site'
