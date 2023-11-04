FROM node:12.18.1-slim
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY ["package.json", "package-lock.json*", "./"]
ENV NODE_ENV Development
RUN npm install
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
COPY . .
# export TF_LOG_PATH="C:/Users/User/Desktop/בוטקאמפ/drive-download-20231024T083806Z-001/terraform-log"
CMD ["node", "index.js"]
