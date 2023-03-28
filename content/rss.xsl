<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom">

<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <rss version="2.0">
    <channel>
      <title>LUG Events</title>
      <link>https://lug.cs.uic.edu/events.xml</link>
      <description>Upcoming LUG events as an RSS feed, calendar-synced!</description>

      <xsl:for-each select="/vcalendar/vevent">
        <xsl:sort select="created" order="descending"/>
        <!-- The SORT tag HAS to be the first thing in for-each otherwise it cries -->
        <xsl:variable name="start" select="normalize-space(dtstart)"/>
        <xsl:variable name="days" select="'  SunMonTueWedThuFriSat'" />
        <xsl:variable name="months" select="'  JanFebMarAprMayJunJulAugSepOctNovDec'" />

        <xsl:variable name="hour" select="substring($start, 10, 2)" />
        <xsl:variable name="minute" select="substring($start, 12, 2)" />
        <xsl:variable name="sec" select="substring($start, 14, 2)" />

        <xsl:variable name="day" select="substring($start, 7, 2)"/>
        <xsl:variable name="month" select="substring($start, 5, 2)"/>
        <xsl:variable name="year" select="substring($start, 1, 4)"/>

        <!-- calculate day of the week -->
        <xsl:variable name="a" select="floor((14 - $month) div 12)"/>
        <xsl:variable name="y" select="$year - $a"/>
        <xsl:variable name="m" select="$month + 12 * $a - 2"/>

        <xsl:variable name="dayofweek" select="($day + $y + floor($y div 4) - floor($y div 100) + floor($y div 400) + floor((31 * $m) div 12)) mod 7"/>

        <item>
          <title>
            <xsl:value-of select="summary" />
          </title>
          <pubDate>
            <!-- FUCK RFC822, RSS DOESN'T EVEN IMPLEMENT IT RIGHT -->
            <xsl:value-of select="substring($days, ($dayofweek + 1) * 3, 3)"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="$day"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="substring($months, $month * 3, 3)"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="$year" />

            <!-- time -->
            <xsl:choose>
              <xsl:when test="$hour and $minute and $sec">
                <xsl:text> </xsl:text>
                <xsl:value-of select="$hour"/>
                <xsl:text>:</xsl:text>
                <xsl:value-of select="$minute"/>
                <xsl:text>:</xsl:text>
                <xsl:value-of select="$sec"/>
                <xsl:text> GMT</xsl:text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:text> 00:00:00 GMT</xsl:text>
              </xsl:otherwise>
            </xsl:choose>

          </pubDate>
        </item>
      </xsl:for-each>

    </channel>
  </rss>
</xsl:template>
</xsl:stylesheet>
<!-- vim: set ts=2 sw=2 expandtab: -->
