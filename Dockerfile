# ncview in a container
#
# docker run  --rm \
#        -v /tmp/.X11-unix:/tmp/.X11-unix \
#        -e DISPLAY=unix$DISPLAY \
#        -v `pwd`:/home/tkdiff \
# 	 weatherlab/tkdiff file1 file2
#

FROM alpine:latest
LABEL maintainer "Xin Zhang <Xin.l.Zhang@noaa.gov>"

RUN    apk update \
    && apk add --update --no-cache tk tcl xorg-server

COPY tkdiff /usr/bin/.

ENV HOME /home/tkdiff
RUN    adduser -D -h $HOME tkdiff \
    && chown -R tkdiff:tkdiff $HOME

WORKDIR $HOME
USER tkdiff

ENTRYPOINT [ "tkdiff" ]
