#!usr/bin/bash

MAIL_FILE="/var/mail/$(whoami)"

while true; do
    if [ -s "$MAIL_FILE" ]; then
        echo "You have new mail."
        head -n 10 "$MAIL_FILE"
    else
        echo "No new mail."
    fi

    sleep 10
done

