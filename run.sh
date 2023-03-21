#!/usr/bin/env bash

set -xe

curl https://calendar.google.com/calendar/ical/linuxusersgroupatuic%40gmail.com/public/basic.ics |
# CRLF<space> is used to fold long lines
sed -z "s/\r\n //g" |

# Black magic
gawk -E script.awk |

# \n is better anyway
sed 's/\r//g' > public/data.xml
