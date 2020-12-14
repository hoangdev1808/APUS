<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<div class="tong-quan-1">
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">section-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="wrap-box" data-aos="fade-left">
						<xsl:apply-templates select="News" mode="Title"></xsl:apply-templates>
					</div>
					<div class="h-3 tong-quan-2" data-aos="fade-right">
						<div class="container">
							<div class="list-items">
								<div class="row">
									<div class="list-items">
										<xsl:apply-templates select="News" mode="Content"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="tong-quan-3 section" data-aos="zoom-in">
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">section-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="sec-title center">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="text">
							<xsl:value-of select="News/Title" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="wrap-table">
						<xsl:value-of select="News/BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="tong-quan-4 section" data-aos="fade-up">
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">section-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<xsl:apply-templates select="News" mode="YTuong"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Title">
		<div class="text-left">
			<div class="sec-title">
				<h2>
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="text">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
		<div class="text-right">
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Content">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		<div class="img">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="YTuong">
		<div class="box-tq-4">
			<div class="row">
				<div class="col-xl-4 box-left">
					<div class="wrap-text-left">
						<div class="sec-title">
							<h2>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<div class="text">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
						<div class="wrap-des">
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</div>
						<div class="view-more-left">
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
								xem thêm

							
							</a>
						</div>
					</div>
				</div>
				<div class="col-xl-8 box-right">
					<div class="img">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text disable-output-escaping="yes">Images</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img >
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
		</div>
	</xsl:template>
</xsl:stylesheet>