# Docker image for PHP and NodeJS

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Frikvdh%2Fdocker-php-node%2Fbadge%3Fref%3Dmaster&style=flat)](https://actions-badge.atrox.dev/rikvdh/docker-php-node/goto?ref=master)
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Frikvdh%2Fdocker-php-node%2Fbadge%3Fref%3Dmaster&style=flat)](https://actions-badge.atrox.dev/rikvdh/docker-php-node/goto?ref=master)

For example to use in CI environments or for local development where you need both PHP and NodeJS.

## Available tags
Tags are constructed in a scheme of: `<php-major.minor>-<node-major>.x`.

For example `8.3-20.x` for PHP 7.3 and NodeJS 20.x.

If you need specific combinations of PHP/NodeJS, open an [issue](https://github.com/rikvdh/docker-ci-php-node/issues) or PR to add to the matrix

## System information
  * Debian 12

## Installed packages
  * ssh
  * openssh-client
  * rsync
  * curl
  * wget
  * PHP
    * mysql
    * pgsql
    * memcached
    * sqlite
    * bz2
    * zip
    * mbstring
    * curl
    * gd
    * xml
    * bcmath
    * soap
    * intl
    * imap
    * redis
  * Composer
  * Node.js
  * NPM
