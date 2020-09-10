<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title">
            <h2>
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
            </h2>
        </div>
        <div class="filed-item">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="desc">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </h1>
			<div class="description" style="text-align: center">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
        </div>
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
    </xsl:template>
</xsl:stylesheet>