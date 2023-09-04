<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css" />
      <title>LUG Events</title>
      <meta http-equiv="refresh" content="30" />
    </head>
    <header>
      <strong>Sourced from the LUG Calendar.</strong>
    </header>
    <body>
      <xsl:for-each select="/vcalendar/vevent">
        <xsl:sort select="created" order="descending"/>
        <!-- The SORT tag HAS to be the first thing in for-each otherwise it cries -->
        <xsl:variable name="start" select="normalize-space(dtstart)"/>
        <xsl:variable name="end" select="normalize-space(dtend)"/>
        <h3>
          <xsl:value-of select="summary" />
        </h3>
        <p>
          <strong>Start: </strong><code>
            <xsl:value-of select="substring($start, 1, 4)" />-<xsl:value-of
            select="substring($start, 5, 2)"/>-<xsl:value-of
            select="substring($start, 7, 2)"/>
          </code>


          <strong> End: </strong><code>
            <xsl:value-of select="substring($end, 1, 4)" />-<xsl:value-of
            select="substring($end, 5, 2)"/>-<xsl:value-of
            select="substring($end, 7, 2)"/>
          </code>
        </p>

        <p>
          <xsl:value-of select="summary" />
          <!-- Maybe add location sometime... -->
          <!-- <strong>Location: </strong><xsl:value-of select="location" /> -->
        </p>

      </xsl:for-each>

    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
<!-- vim: set ts=2 sw=2 expandtab: -->
