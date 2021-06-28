#!/bin/sh

function get_php_extensions() {
    EXTENSIONS='
php8-bcmath
php8-bz2
php8-calendar
php8-ctype
php8-curl
php8-dom
php8-exif
php8-fileinfo
php8-gd
php8-gettext
php8-gmp
php8-imap
php8-intl
php8-ldap
php8-mbstring
php8-mysqli
php8-mysqlnd
php8-opcache
php8-openssl
php8-pcntl
php8-pdo
php8-pdo_mysql
php8-pdo_pgsql
php8-pdo_sqlite
php8-pgsql
php8-phar
php8-posix
php8-session
php8-shmop
php8-simplexml
php8-sockets
php8-sqlite3
php8-tokenizer
php8-pecl-xdebug
php8-xml
php8-xmlreader
php8-xmlwriter
php8-xsl
php8-zip
';
# php8-zlib is not installed, as it is only a virtual package.
# The extensions php8-redis and php8-iconv are not installed, as they are broken on alpine.
# Use symfony/polyfill-iconv respective predis/predis instead when necessary.

    echo "$EXTENSIONS";

    exit 0;
}

function get_php_extensions_default() {
    EXTENSIONS='
php8-ctype
php8-dom
php8-json
php8-mbstring
php8-openssl
php8-phar
php8-posix
php8-simplexml
php8-tokenizer
php8-xml
php8-xmlwriter
php8-zip
';

    echo "$EXTENSIONS";

    exit 0;
}
