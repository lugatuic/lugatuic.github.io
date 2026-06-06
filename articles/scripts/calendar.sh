#!/bin/sh
set -xe

curl "https://calendar.google.com/calendar/ical/c_d025da6dd12eef635c3eaadaa5f28ec45c98523cd5241f7248da67632f8522ff%40group.calendar.google.com/public/basic.ics" |

# CRLF<space> is used to fold long lines
sed -z "s/\r\n //g" |

# Remove annoying CR which breaks everything
tr -d "\r" |

# Remove empty lines
sed "/^$/d" |

# Black magic
gawk -E scripts/parse_calendar.awk |

# \n is better anyway
sed 's/\r//g' > public/events.xml

# Generate rss feed
xsltproc content/static/rss.xsl public/events.xml > public/rss.xml
# xsltproc content/static/style.xsl public/events_raw.xml > public/events.xml
