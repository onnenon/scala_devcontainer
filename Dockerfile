FROM openjdk:17-bullseye

ENV SBT_VERSION 1.6.2

RUN \
  curl -L -o sbt-$SBT_VERSION.deb https://repo.scala-sbt.org/scalasbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install sbt zsh -y


RUN useradd -m -G sudo -s $(which zsh) vscode