<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-home-3" bg-img="Data/Sites/1/skins/default/img/bg/home_bg_1.png">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h1>
								<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
							</h1>
						</div>
						<div class="col-12">
							<div class="service-wrapper">
								<div class="service-slider">
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
								</div>
								<div class="slider-nav"><button class="prev"><span class="lnr lnr-chevron-left"></span></button><button class="next"><span
										 class="lnr lnr-chevron-right"></span></button></div>
							</div>
						</div>
						<div class="col-12">
							<a class="btn btn-more" href="/dich-vu">
								<xsl:value-of select="/NewsList/ViewMore"></xsl:value-of>
							<span class="lnr lnr-arrow-right"></span>
							</a>
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
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption class="figcaption">
					<h2>
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<a class="btn">
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Xem chi tiết </xsl:text>
					</a>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>