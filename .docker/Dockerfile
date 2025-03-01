# start with official ruby docker image as base
FROM ruby:3.4.2

# set working directory within container
WORKDIR /usr/src/app

# pull in ruby (jekyll) and python (cite process) package info
COPY Gemfile Gemfile.lock _cite/requirements.txt ./

COPY hjroh.html ./_includes

# install cmake
RUN apt update && apt install -y cmake

# install ruby packages
RUN VERSION=$(grep -A 1 'BUNDLED WITH' Gemfile.lock | tail -n 1 | xargs); \
    gem install bundler --version ${VERSION} && \
    bundle _${VERSION}_ install

# install python
RUN apt-get update && apt-get install -y python3-pip python3-venv pipx

# 가상 환경 생성
RUN python3 -m venv /app/venv

# 가상 환경 활성화 및 패키지 설치
RUN /app/venv/bin/pip install --upgrade pip

# install python packages
RUN /app/venv/bin/pip install --no-cache-dir --upgrade --requirement requirements.txt

# install python package for listening for file changes
RUN /app/venv/bin/pip install "watchdog[watchmedo]==3.0.0"

# ports used by jekyll
EXPOSE 4000
EXPOSE 35729

# run jekyll and cite process
COPY .docker/entrypoint.sh /var
CMD [ "/var/entrypoint.sh" ]
