<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone[1]" mode="Zone-1"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone-1">
		<div class="sec-title">
			<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
			<p class="text"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></p>
		</div>
		<div class="filed-nav">
			<ul>
				<xsl:apply-templates select="Zone" mode="Zone-2"></xsl:apply-templates>
				
			</ul>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone-2">
		<li>
			<a class=" ">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>