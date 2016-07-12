# Easynode Docker

Dockerfile for easynode. build the image hujb2000/easynode:6.2.0

```
cp v6.2.0/Dockerfile ../.

docker build -t hujb2000/easynode:6.2.0 .

docker push hujb2000/easynode:6.2.0
```


## Docker Hub

You may use this Dockerfile via Docker Hub.

The repo is [here](https://hub.docker.com/r/alinode/alinode-docker/).

And the `docker pull` command is:

```sh
$ docker pull alinode/alinode-docker
```

## With AgentX && Run app.js

This docker may use with [AgentX](https://github.com/aliyun-node/agentx) together.

You should specified these environment variables:

- **APP_ID**: Application ID generated by [alinode](http://alinode.aliyun.com/) dashboard.
- **APP_SECRET**: Application secret value generated by alinode dashboard.
- **AGENTX_ERROR_LOG**: Application error log path. Eg. `/root/.logs/error.#YYYY#-#MM#-#DD#.log`

```sh
# docker run  -d -p 1337:1337 -it  -e "APP_ID=xxx" -e "APP_SECRET=xxx" -v /root/src/:/web/ docker.io/alinode/alinode-docker node /web/app.js
```

And we recommended you bind `hostname` same as host mechine. Because hostname changes follows the container id. So, command is that:
```sh
# docker run  -d -p 1337:1337 -h `hostname`  -e "APP_ID=xxx" -e "APP_SECRET=xxx" -v /root/src/:/web/ docker.io/alinode/alinode-docker node /web/app.js
```

## Contribute

You're welcome to make pull requests!
