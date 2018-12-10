<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="tn-news-details-1">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-wrapper">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
								<time>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
								<p class="brief">
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="news-footer">
								<div class="social-networks nav">
									<div class="nav-item">
										<div class="fb-like" data-href="" data-layout="button" data-action="like" data-size="small" data-show-faces="false"
										 data-share="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
									</div>
									<div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
										 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter"></a></div>
									<div class="nav-item">
										<div class="g-plus" data-action="share"></div>
									</div>
								</div>
								<div class="booking-button">
									<a class="btn btn-more" href="/dat-lich-hen">Đặt lịch hẹn</a>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="news-others-wrapper">
								<h2>
									<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
								</h2>
								<div class="news-others-list">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="news-img col-6 col-sm-4 col-lg-6">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption class="col-6 col-sm-8 col-lg-6">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<time>
						<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
					</time>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>