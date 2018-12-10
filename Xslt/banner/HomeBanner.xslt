<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-home-1">
			<article class="home-banner">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="item">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
		</div>
	</xsl:template>
</xsl:stylesheet>