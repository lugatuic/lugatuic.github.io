<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom">
<!-- identity transform -->
<!-- <xsl:template match="@*|node()"> -->
<!--     <xsl:copy> -->
<!--         <xsl:apply-templates select="@*|node()"/> -->
<!--     </xsl:copy> -->
<!-- </xsl:template> -->
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" disable-output-escaping="yes" />
  <xsl:template match="/">
	<html>
	  <head>
		<link rel="stylesheet" href="https://cdn.simplecss.org/simple.min.css" />
		<title>LUG Events</title>
	  </head>
	  <body>
		<div class="content">
		  <header><xsl:value-of select="rss/channel/lastBuildDate" /></header>
		<xsl:for-each select="rss/channel/item">
			<h1>
				<xsl:value-of select="title" />
			</h1>
			<xsl:value-of select="description" disable-output-escaping="yes" />
		</xsl:for-each>
		</div>
		</body>
	</html>
  </xsl:template>
</xsl:stylesheet>