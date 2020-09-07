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
        <div class="container">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <div class="munber">01</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													02</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													03</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													04</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="munber">
													05</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													06</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													07</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													08</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="munber">
													09</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													10</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													11</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													12</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="munber">
													13</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													14</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                        <td>
                            <div class="munber">
													15</div>
                        </td>
                        <td>
                            <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list-mobile">
                <div class="row">
                    <div class="col-xl-6 col-md-6 item">
                        <ul>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">02</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">03</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">04</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-6 col-md-6 item">
                        <ul>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-6 col-md-6 item">
                        <ul>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-6 col-md-6 item">
                        <ul>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                            <li>
                                <div class="munber">01</div>
                                <a href="">Thảm cỏ ( nơi diễn chụp ảnh, yoga, thiền định)</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="desc">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h1>
            <p></p>
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