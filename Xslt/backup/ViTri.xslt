<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <section class="section h-4 vi-tri" data-aos="fade-up">
            <div class="container">
                <div class="sec-title">
                    <h2>
                        <xsl:value-of select="News/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <h1 class="text">
                        <xsl:value-of select="News/SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                    <p class="sec-des">
                        <xsl:value-of select="News/BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="row">
                    <div class="col-xl-8 col-md-6 pr-0">
                        <div class="img">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="News/NewsImages[1]/ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="News/Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 pl-0">
                        <div class="content">
                            <div class="title">
                                <div class="img">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="News/NewsImages[2]/ImageUrl"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="News/Title"></xsl:value-of>
                                        </xsl:attribute>
                                    </img>
                                </div>
                                <h3>
                                    <xsl:value-of select="News/Title" disable-output-escaping="yes"></xsl:value-of>
                                </h3>
                            </div>
                            <xsl:value-of select="News/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>