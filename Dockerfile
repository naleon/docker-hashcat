#
# hashcat Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV HASHCAT_VERSION hashcat-0.50

# Update & install packages for graylog
RUN apt-get update && \
    apt-get install -y wget p7zip

#Install and configure web interface
RUN mkdir hashcat && \
    cd hashcat && \
    wget http://hashcat.net/files/${HASHCAT_VERSION}.7z && \
    7zr e ${HASHCAT_VERSION}.7z


#Add link for binary
RUN ln -s /hashcat/hashcat-cli64.bin /usr/bin/hashcat

#EXPOSE 9000

#CMD ["/bin/bash""]