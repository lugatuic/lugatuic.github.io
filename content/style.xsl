<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
	<html>
	  <head>
		<link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css" />
		<title>LUG Events</title>
	  </head>
	  <body>
		<xsl:for-each select="rss/channel/item">
		  <h1>
			<xsl:value-of select="title" />
		  </h1>
		  <p>
			<xsl:value-of select="description" />
		  </p>
		</xsl:for-each>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>
