#!/bin/bash

wythnos=$(date +%V)

curl -X POST "https://hooks.slack.com/services/${WEBHOOK}" -d '{"attachments": [ { "fallback": "Required plain-text summary of the attachment.", "color": "#F81805", "pretext": "Ymarfer wythnos '''${wythnos}'''/52", "fields": [ { "title": "Ymarfer?", "value": "<!channel>\n Pwy sydd yn dod i ymarfer yr wythnos hon?\nGadewch <@U04KF9ZTL> i wybod cyn gynted a phosib, diolch!", "short": false } ], "footer": "Dawnswyr Tawerin", "footer_icon": ":tawerin:" } ], "icon_emoji": ":dancers:", "username": "ymarferion", "channel": "#ymarfer"}'
