FROM node:12.18.1-slim
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY ["package.json", "package-lock.json*", "./"]
ENV NODE_ENV Development
RUN npm install
COPY . .
# export TF_LOG_PATH="C:/Users/User/Desktop/בוטקאמפ/drive-download-20231024T083806Z-001/terraform-log"
CMD ["node", "index.js"]
