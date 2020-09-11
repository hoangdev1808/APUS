<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        
        <xsl:apply-templates select="/NewsList/News" mode="Bigimg"></xsl:apply-templates>
        <div class="filed-list">
            <xsl:apply-templates select="/NewsList/News" mode="Smallimg"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Bigimg">
        <xsl:if test="position()=1">
			<div class="section-title-child text-center line" data-aos="fade-down" data-aos-delay="500">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
				</p>
				<h1 class="name">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h1>
			</div>
            <div class="desc" data-aos="fade-up" data-aos-delay="500">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="img-desc" data-aos="fade-up" data-aos-delay="500">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Smallimg">
        <xsl:if test="position()!=1">
            <div class="filed-item">
                <div class="row">
                    <div class="col-xl-8 col-md-6 left" data-aos="fade-left" data-aos-delay="500">
                        <div class="img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 right" data-aos="fade-right" data-aos-delay="500">
						<div class="section-title-child line">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</p>
							<h2 class="name">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
                        <div class="desc">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>