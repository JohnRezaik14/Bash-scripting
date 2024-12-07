#!usr/bin/bash

email_body=$(cat mtemplate)

if [ -z "$email_body" ]; then
    echo "Error: mtemplate file is empty."
    exit 1
fi

for user in $(cut -d: -f1 /etc/passwd | grep -Ev '^(root|sync|halt|shutdown|bin|daemon|sys|news|mail|ftp|games)$'); do
    echo "$email_body" | s-nail -s "Subject: Important Notification" "$user"
    echo "Mail sent to $user"
done

