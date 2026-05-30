#!/bin/bash

URL=https://google.com

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "Status Code: $STATUS"
if [[ $STATUS -ge 200 && $STATUS -lt 400 ]]

then
    echo "Website UP"
else
    echo "Website DOWN"
fi
