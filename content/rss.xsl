<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom">

<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <rss version="2.0">
    <channel>
      <title>LUG Events</title>

      <xsl:for-each select="/vcalendar/vevent">
        <xsl:sort select="created" order="descending"/>
        <!-- The SORT tag HAS to be the first thing in for-each otherwise it cries -->
        <xsl:variable name="start" select="normalize-space(dtstart)"/>
        <xsl:variable name="end" select="normalize-space(dtend)"/>
        <item>
          <title>
            <xsl:value-of select="summary" />
          </title>
          <pubDate>
            <xsl:value-of select="substring($end, 1, 4)" />-<xsl:value-of
            select="substring($end, 5, 2)"/>-<xsl:value-of
            select="substring($end, 7, 2)"/>
          </pubDate>
        </item>
      </xsl:for-each>

    </channel>
  </rss>
</xsl:template>
</xsl:stylesheet>
<!-- vim: set ts=2 sw=2 expandtab: -->
