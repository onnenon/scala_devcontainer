FROM registry.access.redhat.com/ubi8/openjdk-17

USER root

ENV SBT_VERSION 1.6.2

RUN \
  curl -L -o sbt-$SBT_VERSION.rpm https://scala.jfrog.io/artifactory/rpm/sbt-$SBT_VERSION.rpm && \
  rpm -i sbt-$SBT_VERSION.rpm && \
  rm sbt-$SBT_VERSION.rpm && \
  microdnf upgrade -y && \
  microdnf install bash


RUN useradd -m -G wheel -s /bin/bash vscode