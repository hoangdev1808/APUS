<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="tin-tuc-chi-tiet section">
            <div class="container">
                <div class="wrap-title-post">
                    <div class="title">
                        <h1>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="wrap-social-date">
                        <span class="date">
                            <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                        <div class="line"></div>
                        <div class="social">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                    <xsl:value-of select="FullUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:text disable-output-escaping="yes">_blank</xsl:text>
                                </xsl:attribute>
                                <i class="ri-facebook-box-fill"></i>
                            </a>
                            <i class="ri-instagram-line"></i>
                        </div>
                    </div>
                </div>
                <div class="wrap-content">
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </section>
        <section class="other-posts">
            <div class="container">
                <div class="sec-title center">
                    <div class="title">
                        <h3>Tin tức khác</h3>
                    </div>
                </div>
                <div class="wrap-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="wrap-button">
                        <div class="swiper-prev swiper-button-1">
                            <img class="back" src="./assets/images/tin-tuc/mui-ten-1.png" />
                        </div>
                        <div class="swiper-next swiper-button-1">
                            <img class="next" src="./assets/images/tin-tuc/mui-ten-1.png" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide">
            <div class="box-post-tin">
                <div class="img">
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
                    <span class="date">
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                    <div class="title">
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
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </div>
                    <a class="viewlink">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>Xem chi tiết</xsl:text>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>