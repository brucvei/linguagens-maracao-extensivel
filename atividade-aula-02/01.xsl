<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/filmes">
        <html>
            <head>
                <title>Lista de filmes</title>
            </head>
            <body>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Título original</th>
                            <th>Título brasileiro</th>
                            <th>Gênero</th>
                            <th>Duração</th>
                            <th>Ano</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="filme">
                            <tr>
                                <td>
                                    <xsl:value-of select="@tituloEN" />
                                </td>
                                <td>
                                    <xsl:value-of select="@tituloBR" />
                                </td>
                                <td>
                                    <xsl:value-of select="@genero" />
                                </td>
                                <td>
                                    <xsl:value-of select="@duracao" />
                                </td>
                                <td>
                                    <xsl:value-of select="@ano" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
