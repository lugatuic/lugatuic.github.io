#!/bin/sh
set -xe
TZ="America/Chicago"
emacs -Q --script build-site.el
cp content/style.xsl public/ && echo "Copied style.xsl!"
cp content/logo.svg public/ && echo "Copied logo!"
cp content/favicon.png public/ && echo "Copied Favicon!"



curl https://calendar.google.com/calendar/ical/linuxusersgroupatuic%40gmail.com/public/basic.ics |
# CRLF<space> is used to fold long lines
sed -z "s/\r\n //g" |

# Black magic
gawk -E script.awk |

# \n is better anyway
sed 's/\r//g' > public/events.xml
