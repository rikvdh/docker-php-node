# Docker image for PHP and NodeJS
For example to use in CI

## Available tags
Tags are constructed in a scheme of: `<php-major.minor>-<node-major.minor>`.

For example `7.4-14.10` for PHP 7.4.x and NodeJS 14.10.x.

If you need specific combinations of PHP/NodeJS, open an [issue](https://github.com/rikvdh/docker-ci-php-node/issues)

## System information
  * Ubuntu 18.04

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
    * intl
    * imap
  * Composer
  * PHPUnit
  * Node.js
  * NPM
