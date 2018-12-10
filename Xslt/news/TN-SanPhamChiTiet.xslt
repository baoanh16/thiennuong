<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tn-product-details-1">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="thumbnail-list">
								<div class="small-thumbnail">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="small"></xsl:apply-templates>
								</div>
								<div class="big-thumbnail">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="big"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="product-details">
								<h2>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2>
								<span>
									<xsl:value-of select="/NewsDetail/SubTitle"></xsl:value-of>
								</span>
								<p> <b>Mô tả ngắn: </b>
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<section class="tn-product-details-2">
			<article class="nav-attributes">
				<div class="container">
					<div class="row">
						<div class="col">
							<ul class="nav" data-tabs="">
								<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Title" />
							</ul>
						</div>
					</div>
				</div>
			</article>
		</section>

		<section class="tn-product-details-3">
			<article class="content-attributes">
				<div class="container">
					<div class="row">
						<div class="col" data-tabs-content="">
							<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Content" />
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="NewsImages" mode="small">
		<div class="item">
			<img src="./img/product/product_1.png" alt="">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="big">
		<div class="item">
			<img src="./img/product/product_1.png" alt="">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="NewsAttributes" mode="Title">
		<li class="nav-item">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a data-tab="">
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="NewsAttributes" mode="Content">
		<div class="fullcontent tabs-pane" data-tabs-pane="">
		<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>fullcontent tabs-pane active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			<a class="btn btn-more" href="#">Đăng ký ngay<span class="lnr lnr-arrow-right"></span></a>
		</div>
	</xsl:template>

</xsl:stylesheet>