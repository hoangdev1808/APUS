<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="nha-mau section">
            <div class="container">
                <div class="sec-title center">
                    <h2>
                        <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <h1 class="text">
                        <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="row" data-aos="fade-left">
                    <div class="col-lg-6">
                        <xsl:apply-templates select="News[1]" mode="Big-1"></xsl:apply-templates>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <xsl:apply-templates select="News[position() > 1 and position() &lt; 6]" mode="Small1"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
                <div class="row" data-aos="fade-right">
                    <div class="col-lg-6">
                        <div class="row">
                            <xsl:apply-templates select="News[position() > 6]" mode="Small2"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <xsl:apply-templates select="News[position() = 6]" mode="Big-2"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="Big-1">
        <div class="box-img-big">
            <div class="img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Image</xsl:text>
                        <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
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
            <div style="display: none;">
                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Small1">
        <div class="col-md-6">
            <div class="box-img-small">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">Image</xsl:text>
                            <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
            </div>
            <div style="display: none;">
                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big-2">
        <div class="box-img-big">
            <div class="img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Image</xsl:text>
                        <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
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
            <div style="display: none;">
                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Small2">
        <div class="col-md-6">
            <div class="box-img-small">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">Image</xsl:text>
                            <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
            </div>
            <div style="display: none;">
                <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages">
        <xsl:if test="position()>1">
            <a>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">Image</xsl:text>
                    <xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>