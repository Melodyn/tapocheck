FROM node:12.9.0

ARG WORKDIR=/usr/src/app
ARG SDK_ZIP=sdk-tools-linux-4333796.zip
ARG ANDROID_BUILD_VERSION=28
ARG ANDROID_TOOLS_VERSION=28.0.3

WORKDIR ${WORKDIR}

RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        nano \
        curl \
        tar \
        xz-utils

# Install React Native
RUN npm install --global react-native-cli

# Install OpenJDK
RUN apt-get install -y openjdk-8-jdk

# Install Android SDK
ENV ANDROID_HOME=${WORKDIR}/Android/Sdk
ENV PATH=${ANDROID_HOME}/emulator:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:${PATH}

