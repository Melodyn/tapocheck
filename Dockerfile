FROM ubuntu:18.04

ARG WORKDIR=/usr/src/app
ARG NODE_V=12.7.0
ARG NODE_DISTR=linux-x64

WORKDIR ${WORKDIR}

RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        nano \
        curl \
        tar \
        xz-utils

# Install NodeJS
RUN mkdir -p /usr/local/lib/nodejs && \
    curl https://nodejs.org/dist/v${NODE_V}/node-v${NODE_V}-${NODE_DISTR}.tar.xz --output node.tar.xz && \
    tar -xJvf node.tar.xz -C /usr/local/lib/nodejs && \
    rm -rf ./node.tar.xz
ENV PATH="/usr/local/lib/nodejs/node-${NODE_V}-${NODE_DISTR}/bin:${PATH}"
RUN ln -s /usr/local/lib/nodejs/node-v${NODE_V}-${NODE_DISTR}/bin/node /usr/bin/node && \
    ln -s /usr/local/lib/nodejs/node-v${NODE_V}-${NODE_DISTR}/bin/npm /usr/bin/npm && \
    ln -s /usr/local/lib/nodejs/node-v${NODE_V}-${NODE_DISTR}/bin/npx /usr/bin/npx
## js, ёбтвоюмать, ну почему с тобой всё так сложно?!

# Install React Native
RUN npm install --global react-native-cli && \
    ln -s /usr/local/lib/nodejs/node-v${NODE_V}-${NODE_DISTR}/bin/react-native /usr/bin/react-native

# Install OpenJDK
RUN apt-get install -y openjdk-8-jdk

# Install Android SDK
ENV ANDROID_HOME=${WORKDIR}/Android/Sdk
ENV PATH=${ANDROID_HOME}/emulator:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:${PATH}
