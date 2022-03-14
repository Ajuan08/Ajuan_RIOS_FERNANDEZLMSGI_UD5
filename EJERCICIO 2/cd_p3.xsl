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
                <th>Sello discográfico</th>
                <th>Año de publicación</th>
                <th>Canciones</th>
            </tr>
            <xsl:for-each select="cds/cd[sello='UMLE - Latino']">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td><xsl:value-of select="sello"/></td>
                    <td><xsl:value-of select="anno"/></td>
                    <td>
                        <xsl:for-each select="canciones">
                            <xsl:value-of select="."/>
                        <br/>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>