<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-home-5" bg-img="Data/Sites/1/skins/default/img/bg/home_bg_2.jpg">
			<article>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home-feedback-slider">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="item">
			<figure>
				<div class="img-block">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</div>
				<figcaption class="figcaption">
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of> -
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>