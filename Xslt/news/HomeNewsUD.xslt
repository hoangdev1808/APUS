<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone/News[1]"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-xl-5 col-md-6 animation-left">
				<div class="sec-title">
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
					<p class="text"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
				</div>
			</div>
			<div class="col-xl-6 col-md-6 ml-auto animation-right">
				<div class="h-2__right">
					<div class="desc">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
		<div class="list-items animation-bottom">
			<div class="full-contnet">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="img">
				<img class=" ">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>