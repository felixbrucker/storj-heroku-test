FROM node:6
RUN apt update && apt install -y build-essential git-core
WORKDIR /app
RUN npm install -g storjshare-daemon
RUN mkdir share && mkdir logs
COPY config.json .
COPY entrypoint.sh .
CMD ["entrypoint.sh"]
