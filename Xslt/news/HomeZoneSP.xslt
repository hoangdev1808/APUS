<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="section-title text-center line animation-top">
			<p class="white ani-left-t xanh">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</p>
			<h2 class="ani-right-t xanh">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</h2>
		</div>
		<div class="main-product">
			<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<xsl:if test="position()&gt;0 and position()&lt;3">
			<div class="product-item">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">product-item animation-left ani-left-t xanh</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position()=2">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">product-item animation-right ani-right-t xanh</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="content">
					<h3 class="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
				<div class="image">
					<img class=" ">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="button-icon-search">
						<a href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-magnify"></em>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>