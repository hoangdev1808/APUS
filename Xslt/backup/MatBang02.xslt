<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="mat-bang-02 section" data-aos="fade-up">
            <div class="container">
                <div class="sec-title center">
                    <h2>
                        <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <div class="text">
                        <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
                <xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
                <div class="hidden">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="mb-item">
			<xsl:attribute name="data-url">
			<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">image-map-tooltip-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="figure-tooltip">
                <div class="figcaption">
                    <p>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>