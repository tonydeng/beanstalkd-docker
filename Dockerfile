FROM alpine:latest

MAINTAINER Tony Deng <wolf.deng@gmail.com>

## add Tini and Beanstalkd
RUN apk add --update --no-cache tini beanstalkd && rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini","--"]

## Expose the port

EXPOSE 11300

## Beanstalkd Run
CMD ["beanstalkd","-p","11300","-u","nobody"]
