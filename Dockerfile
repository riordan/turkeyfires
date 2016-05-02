FROM jupyter/scipy-notebook

MAINTAINER David Riordan <dr@daveriordan.com>

USER root

# SimpleDBF for reading DBF files
RUN pip install simpledbf


# Libpostal
RUN apt-get update

#Install Libpostal prerequisites
RUN apt-get install -y \
	curl \
	libsnappy-dev \
	autoconf \
	automake \
	libtool \
	pkg-config \
	clang


# Download Libpostal source to /usr/local/libpostal
RUN cd /usr/local && \
	git clone https://github.com/openvenues/libpostal

# Create Libpostal data directory at /var/libpostal/data
RUN cd /var && \
	mkdir libpostal && \
	cd libpostal && \
	mkdir data

# Install Libpostal to /usr/local/libpostal
# With data directory at /var/libpostal/data
RUN cd /usr/local/libpostal && \
	./bootstrap.sh && \
	./configure --datadir=/var/libpostal/data && \
	make && \
	make install && \
	ldconfig

# Install bindings from Pypi
RUN pip install postal

RUN pip install csvkit
