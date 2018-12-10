<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1 ">
			<section class="tn-about-2">
				<article>
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</article>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="tn-about-3">
				<article>
					<div class="container">
						<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
					</div>
				</article>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="tn-about-4">
				<article>
					<div class="container">
						<div class="row">
							<h2>
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>

					</div>
				</article>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-lg-6">
			<div class="intro-text">
				<h1>
					<xsl:value-of select="Title"></xsl:value-of>

				</h1>
				<h2>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<p>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
		<div class="col-lg-6">
			<img>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<xsl:if test="position() = 1">
			<div class="row no-gutters">
				<div class="col-lg-6">
					<img>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
	
					</xsl:attribute>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="col-lg-6">
					<div class="intro-text">
						<p>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2">
			<div class="row no-gutters">
				<div class="col-lg-6 order-2 order-lg-1">
					<div class="intro-text">
						<p>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2">
					<img>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
	
					</xsl:attribute>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="col-lg-6 item">
			<figure>
				<img>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>

				</xsl:attribute>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h3><xsl:value-of select="Title"></xsl:value-of></h3>

					<p><xsl:value-of select="FullContent"></xsl:value-of></p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>