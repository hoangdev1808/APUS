<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="Zone">
		<div class="section-title text-center line animation-top">
			<p class="white"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
			<h2><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></h2>
		</div>
		<ul class="list-tabs animation-bottom">
			<xsl:apply-templates select="News" mode="Tab"></xsl:apply-templates>
		</ul>
		<div class="main-slide animation-bottom">
			<xsl:apply-templates select="News" mode="Content"></xsl:apply-templates>
			
			<div class="main-button">
				<div class="button-prev"><em class="lnr lnr-arrow-left"></em></div>
				<div class="button-next"><em class="lnr lnr-arrow-right"></em></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Tab">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="toggle-for">
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<a class="" href="javascript:void(0)">
				<!-- <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</li>
	</xsl:template>
	<xsl:template match="News" mode="Content">
		<div class="box-slide" tab-id="1">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">box-slide active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="tab-id">
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="image">
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
					<img class=" ">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<div class="button-icon-search">
					<a href="#" data-fancybox="">
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<em class="mdi mdi-magnify"></em>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>