FROM jupyter/scipy-notebook

MAINTAINER David Riordan <dr@daveriordan.com>

USER root

RUN pip install simpledbf
