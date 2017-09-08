# Beanstalkd Docker

## Introduce

Beanstalkd is sample, fast work queue. By [fr/beanstalkd](https://github.com/fr/beanstalkd)

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
