## Docker: Debian - NGINX (PHP Proxy)

[![Build Status](https://travis-ci.org/ericmdev/nginx-php-proxy.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/nginx-php-proxy.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) configured to proxy PHP requests to the FastCGI service.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [ericmdev/nginx](https://hub.docker.com/r/ericmdev/nginx/)

*Docker Pull Command*
- `docker pull ericmdev/nginx-php-proxy`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.