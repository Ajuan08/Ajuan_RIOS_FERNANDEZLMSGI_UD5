<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Biblioteca personal de Antonio Juan</h1>
                <table border="3">
                    <tr bgcolor="green">
                        <th>Título del álbum</th>
                        <th>Artista</th>
                        <th>Cancion</th>
                        <th>Sello discográfico</th>
                        <th>Año de publicación</th>
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="cds/cd">
                        <xsl:variable name="titulo">
                            <xsl:value-of select="titulo"/>
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista"/>
                        </xsl:variable>
                        <xsl:variable name="canciones">
                            <xsl:value-of select="canciones"/>
                        </xsl:variable>
                        <xsl:variable name="sello">
                            <xsl:value-of select="sello"/>
                        </xsl:variable>
                        <xsl:variable name="anno">
                            <xsl:value-of select="anno"/>
                        </xsl:variable>
                            <xsl:for-each select="canciones">
                                <xsl:if test="@tiempo &lt; 200">
                                    <tr text-align="center">
                                    <td><xsl:value-of select="$titulo"/></td>
                                    <td><xsl:value-of select="$artista"/></td>
                                    <td><xsl:value-of select="."/></td>
                                    <td><xsl:value-of select="$sello"/></td>
                                    <td><xsl:value-of select="$anno"/></td>
                                    <td><xsl:value-of select="@tiempo"/></td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>