<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="mat-bang-3 section" setBackground="/Data/Sites/1/skins/default/assets/mat-bang-3/bg-xanh.jpg" data-aos="fade-up">
			<div class="container">
				<div class="sec-title center">
					<h2>
						<xsl:value-of select="ZoenTitle" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="text">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="wrap-box-mb">
					<div class="row justify-content-center">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>
				</div>
				<div class="wrap-table">
					<div class="row">
						<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="col-lg-4 col-md-6">
			<div class="img">
				<a href="" data-fancybox="">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="wrap-text">
				<p>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="col-lg-6">
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>