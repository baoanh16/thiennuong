<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-home-6">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h2>
								<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						<div class="col-12">
							<div class="btn-wrapper">
								<a class="btn btn-more" href="/tin-tuc-1">Xem thêm<span class="lnr lnr-arrow-right"></span></a></div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-6 col-lg-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<p class="desc">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</p>
						<p class="time"><time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>Xem chi tiết</p>
					</figcaption>
				</figure>
			</a></div>
	</xsl:template>
</xsl:stylesheet>