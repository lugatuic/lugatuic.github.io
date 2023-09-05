#!/bin/sh
set -xe

curl "https://uic.campusgroups.com/ics?uid=6e5c8fe1-dbbd-11ed-902f-0e3e5d452619&type=group&eid=ccad7241c88a1d61aa0a73173e0e9648" |

# CRLF<space> is used to fold long lines
sed -z "s/\r\n //g" |

# Remove annoying CR which breaks everything
tr -d "\r" |

# Remove empty lines
sed "/^$/d" |

# Black magic
gawk -E script.awk |

# \n is better anyway
sed 's/\r//g' > public/events_raw.xml

# Generate rss feed
xsltproc content/static/rss.xsl public/events_raw.xml > public/rss.xml
xsltproc content/static/style.xsl public/events_raw.xml > public/events.xml
