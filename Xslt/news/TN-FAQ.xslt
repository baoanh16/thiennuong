<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="tn-support-3">
			<article>
				<div class="container">
					<div class="row">
						<div class="col ajaxresponse">
							<div class="list-faq ajaxresponsewrap">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
								<xsl:if test="/NewsList/NextPageUrl!=''">
									<a class="btn btn-more ajaxpagerlink">
										<xsl:attribute name="href">
											<xsl:value-of select="/NewsList/NextPageUrl" />
										</xsl:attribute>
										<xsl:text>Xem thêm</xsl:text>
										<span class="lnr lnr-arrow-right"></span>
									</a>
								</xsl:if>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="faq-item">
			<div class="content">
				<div class="question">
					<span class="number">
						<!-- <xsl:if test="position()  &gt; 0 and  position() &lt; 10">
							<xsl:text>0</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:if>
						<xsl:if test="position()  &gt; 9">
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:if> -->
					</span>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<div class="answer">
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>

	</xsl:template>
</xsl:stylesheet>