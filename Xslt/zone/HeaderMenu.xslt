<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>


	<xsl:template match="Zone">
		<li>
			<xsl:if test="count(Zone)>0">
				<xsl:attribute name="class">
					<xsl:text>nav-item dropdown</xsl:text>
				</xsl:attribute>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-item dropdown active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a class="nav-link">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<ul class="dropdown-menu">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</a>
			</xsl:if>

			<xsl:if test="count(Zone)=0">
				<xsl:attribute name="class">
					<xsl:text>nav-item</xsl:text>
				</xsl:attribute>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a class="nav-link">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</xsl:if>


		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Child">
		<li class="dd-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>dd-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>