FROM buildpack-deps:jessie

USER root

MAINTAINER easynode

ENV HOME /root
ENV NPM_CONFIG_LOGLEVEL info
ENV EASYNODE_VERSION 6.2.0
ENV ENVM_DIR /root/.envm


RUN rm /bin/sh && \
    ln -s /bin/bash /bin/sh

# Install easynode v6.2.0 (node 6.2.0)
RUN wget -qO- http://github.hzspeed.cn/envm/install.sh | bash
RUN source $HOME/.bashrc && \
        envm install "easynode-v$EASYNODE_VERSION" && \
        envm use "easynode-v$EASYNODE_VERSION"
#RUN source $HOME/.bashrc && npm install -g agentx
#RUN git clone https://github.com/aliyun-node/commands.git /usr/local/src/alinode_commands

#COPY docker-entrypoint.sh /
#ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["node"]


