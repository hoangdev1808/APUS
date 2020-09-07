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
        <xsl:apply-templates select="/NewsList/News" mode="Bigimg"></xsl:apply-templates>
        <div class="filed-list">
            <xsl:apply-templates select="/NewsList/News" mode="Smallimg"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Bigimg">
        <xsl:if test="position()=1">
            <div class="desc">
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
                <p>
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </p>
            </div>
            <div class="img-desc">
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
                    <div class="col-xl-8 col-md-6 left">
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
                    <div class="col-xl-4 col-md-6 right">
                        <div class="desc">
                            <h4>
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </h4>
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <p>
                                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>