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
            <xsl:for-each select="/libros">
            <xsl:sort select="precio" data-type="number"/>
            <tr>
                <td><xsl:value-of select="codLibro"/></td>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="autor"/></td>
                <td><xsl:value-of select="precio"/></td>
            </tr> 
        </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>