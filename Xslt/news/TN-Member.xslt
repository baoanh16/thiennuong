<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tn-member-2">
			<article>
				<div class="tabs-content" data-tabs-content="">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</article>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="tabs-pane" data-tabs-pane="">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tabs-pane active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>member-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-lg-5 left">
			<h2>
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
		<div class="col-lg-7 right">
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>