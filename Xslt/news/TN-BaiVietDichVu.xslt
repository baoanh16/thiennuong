<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-services-1">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h1>
								<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
							</h1>
						</div>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-6 col-lg-4">
			<figure>
				<div class="img-block">
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption class="figcaption">
					<h2>
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</p>
					<a class="btn">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						Xem chi tiết
					</a>
				</figcaption>
			</figure>

		</div>

	</xsl:template>
</xsl:stylesheet>