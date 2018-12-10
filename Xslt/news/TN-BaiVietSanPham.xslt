<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-product-2">
			<article>
				<div class="container ajaxresponse">
					<div class="row ajaxresponsewrap">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
					<a class="btn btn-more ajaxpagerlink">
						<xsl:attribute name="href">
							<xsl:value-of select="/NewsList/NextPageUrl" />
						</xsl:attribute>
						<xsl:text>Xem thêm</xsl:text>
						<span class="lnr lnr-arrow-right"></span>
					</a>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-sm-6 col-lg-4">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<img alt="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>

					<figcaption>
						<span>
							<xsl:value-of select="Title"></xsl:value-of>
						</span>
					</figcaption>
				</figure>
			</a></div>
	</xsl:template>
</xsl:stylesheet>