# Download Base Image
FROM ubuntu:20.04 as build

# Install Required Packages
RUN apt update
RUN apt install wget openjdk-8-jre -y

# Download Controller Package
RUN wget https://dl.ui.com/unifi/7.1.61/unifi_sysvinit_all.deb

# Install Controller
RUN apt install ./unifi_sysvinit_all.deb -y

ENTRYPOINT [ "sh", "Entrypoint.sh" ]