<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Antonio Juan</h1>
        <table>
            <tr bgcolor="#2402SGV">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
            <xsl:for-each select="libreria/libros">
            <tr>
                <xsl:choose>
                    <!--
                    <xsl:when test="precio = 10.50 or precio = 60.50">
                        <td bgcolor="#800080"><xsl:value-of select="codLibro"/></td>
                        <td bgcolor="#800080"><xsl:value-of select="titulo"/></td>
                        <td bgcolor="#800080"><xsl:value-of select="autor"/></td>
                        <td bgcolor="#800080"><xsl:value-of select="precio"/></td>
                    </xsl:when>
                    <xsl:when test="precio != 10.50">
                        <td><xsl:value-of select="codLibro"/></td>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </xsl:when>
                -->
                <xsl:when test="precio &lt; 25">
                        <td bgcolor="#FF0000"><xsl:value-of select="codLibro"/></td>
                        <td bgcolor="#FF0000"><xsl:value-of select="titulo"/></td>
                        <td bgcolor="#FF0000"><xsl:value-of select="autor"/></td>
                        <td bgcolor="#FF0000"><xsl:value-of select="precio"/></td>
                    </xsl:when>
                    <xsl:when test="precio &gt; 25">
                        <td bgcolor="#008000"><xsl:value-of select="codLibro"/></td>
                        <td bgcolor="#008000"><xsl:value-of select="titulo"/></td>
                        <td bgcolor="#008000"><xsl:value-of select="autor"/></td>
                        <td bgcolor="#008000"><xsl:value-of select="precio"/></td>
                    </xsl:when>
                </xsl:choose>
            </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>