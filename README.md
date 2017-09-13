# Beanstalkd Docker

[![Docker Stars](https://img.shields.io/docker/stars/wolfdeng/beanstalkd.svg)](https://hub.docker.com/r/wolfdeng/beanstalkd/)
[![Docker Pulls](https://img.shields.io/docker/pulls/wolfdeng/beanstalkd.svg)](https://hub.docker.com/r/wolfdeng/beanstalkd/)
[![Image Size](https://img.shields.io/imagelayers/image-size/wolfdeng/beanstalkd/latest.svg)](https://imagelayers.io/?images=wolfdeng/beanstalkd:latest)
[![Image Layers](https://img.shields.io/imagelayers/layers/wolfdeng/beanstalkd/latest.svg)](https://imagelayers.io/?images=wolfdeng/beanstalkd:latest)

## Introduce

Beanstalkd is sample, fast work queue. By [kr/beanstalkd](https://github.com/kr/beanstalkd)

Its interface is generic, but was originally designed for reducing the latency of page views in high-volume web applications by running time-consuming tasks asynchronously.

## Usage

This docker image is available as a build on the docker hub, so there's no setup required.
Using this image for the first time will start a download automatically.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```
$ sudo docker run -d -p 11300:11300 wolfdeng/beanstalkd
```
The above example exposes the Beanstalk on port 11300, so that you can use it in your application.

You can also use docker's links to link beanstalkd service to your container.

## Beanstalk Documents
### Protocol

[English version](https://github.com/kr/beanstalkd/blob/master/doc/protocol.txt) and [Chinese version](https://github.com/kr/beanstalkd/blob/master/doc/protocol.zh-CN.md) or [My reformat Chinese version](https://github.com/tonydeng/beanstalkd/blob/master/doc/protocol.zh-CN.md)

### Beanstalkd FAQ

[Beanstalkd FAQ 中文版](http://www.fzb.me/2015-7-31-beanstalkd-faq.html)


### Using Beanstalkd

```bash
~ # beanstalkd -h
Options:
 -b DIR   wal directory
 -f MS    fsync at most once every MS milliseconds (use -f0 for "always fsync")
 -F       never fsync (default)
 -l ADDR  listen on address (default is 0.0.0.0)
 -p PORT  listen on port (default is 11300)
 -u USER  become user and group
 -z BYTES set the maximum job size in bytes (default is 65535)
 -s BYTES set the size of each wal file (default is 10485760)
            (will be rounded up to a multiple of 512 bytes)
 -c       compact the binlog (default)
 -n       do not compact the binlog
 -v       show version information
 -V       increase verbosity
```
