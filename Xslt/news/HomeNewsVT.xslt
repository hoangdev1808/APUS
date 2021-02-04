<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="sec-title animation-top">
			<h2 class="ani-left-t">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<p class="text ani-right-t">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</div>
		<div class="row animation-bottom fade-in-up">
			<div class=".col-xl-8 col-lg-8 col-md-12 pr-0">
				<div class="img ">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text disable-output-escaping="yes">Image</xsl:text>
						</xsl:attribute>
						<img class=" ">
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
			<div class=".col-xl-4 col-lg-4 col-md-12 pl-0">
				<div class="content">
					<xsl:apply-templates select="News[1]"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="title">
			<div class="img">
				<img class=" ">
					<xsl:attribute name="src">
						<xsl:value-of select="NewsImages[2]/ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<h3>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h3>
		</div>
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>