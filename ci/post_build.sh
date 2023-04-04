#!/usr/bin/env bash

set -e
if [[ $ax613_roms != *" $rom_name "* ]]; then exit 0; fi
your_telegram_id=@ROM_builders_channel
curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" -d "text=<code>$device-$rom_name</code> Succeed https://cirrus-ci.com/build/$CIRRUS_BUILD_ID" -d "chat_id=${your_telegram_id}" -d "parse_mode=HTML"