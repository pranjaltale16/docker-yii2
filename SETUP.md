
# Setup Guidelines

This document outlines the process of deploying docker-yii2 project.

## Deployment using docker-compose

### Pre deployment requirements

- Update the base apache image conf stored in `apache-dockerfile` directory. (This step is optional)
> If a new image is constructed with a different image name, update `docker-compose.yml` also.
- Move `config-stencil` to `config`
- Populate config files store in `config` directory
> Make sure to use the same database credentials in `main.php` also

### Setup using docker-compose

1. Run `docker-compose up -d` to start yii2 application in background
2. Run `docker exec -it yii2-apache bash /scripts/initialize.sh` to initialize the project
3. Run `bash scripts/build.sh` to install dependencies
4. Add `127.0.0.1    frontend.in` and `127.0.0.1    backend.in`  to `/etc/hosts`
5. Visit [backend](http://backend.in:8088) to see the project running.
