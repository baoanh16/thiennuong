<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-support-2">
			<article>
				<div class="container ajaxresponse">
					<div class="row ajaxresponsewrap">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						<div class="col-12">
							<xsl:if test="/NewsList/NextPageUrl!=''">
									<a class="btn btn-more ajaxpagerlink">
										<xsl:attribute name="href">
											<xsl:value-of select="/NewsList/NextPageUrl" />
										</xsl:attribute>
										<xsl:text>Xem thêm</xsl:text>
										<span class="lnr lnr-arrow-down"></span>
									</a>
								</xsl:if>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-lg-6">
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<em class="fas fa-quote-left"></em>
					<p>
						<xsl:value-of select="FullContent"></xsl:value-of>
					</p>
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
						<span>
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</span>
					</h3>
				</figcaption>
			</figure>
		</div>

	</xsl:template>
</xsl:stylesheet>