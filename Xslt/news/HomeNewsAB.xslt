<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone/News[1]"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-xl-5 col-md-6 h-2__left animation-left">
				<div class="sec-title ani-left-t">
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<h1 class="text">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</h1>
				</div>
			</div>
			<div class="col-xl-6 col-md-6 h-2__right animation-right ani-right-t">
				<div class="desc">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="view-more">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<span>xem thêm</span>
					</a>
				</div>
			</div>
			<div class="col-xl-12" >
				<div class="img fade-in-up">
					<a>
						<xsl:attribute name="data-fancybox">
							<xsl:text disable-output-escaping="yes">Image</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>