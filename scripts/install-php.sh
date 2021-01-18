#!/bin/sh

set -e;

source php-extensions.sh

EXTENSIONS=$(get_php_extensions);

apk update;
apk add php8 php8-fpm imagemagick;
ln -s /usr/bin/php8 /usr/bin/php;

for EXTENSION in $EXTENSIONS; do
    if [ -z "$EXTENSION" ]; then
        continue;
    fi

    PKG=$(apk search -x "$EXTENSION");
    apk add "$EXTENSION"=$(echo "$PKG" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\-r[0-9]');
done;
