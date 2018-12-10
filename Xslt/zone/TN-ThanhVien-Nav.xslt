<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tn-member-1">
			<article>
				<div class="container">
					<h1>
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h1>
					<div class="row">
						<div class="col">
							<ul class="nav data-tabs" data-tabs="">
								<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
							</ul>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="tab-member" data-tab="">
				<xsl:attribute name="href">
					<xsl:text>#member-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<h2>
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>