<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Índice de notas fiscais</title>
            </head>
            <body>
                <h1>Índice de notas fiscais</h1>

                <ul>
                    <xsl:for-each select="//nfeProc/NFe/infNFe">
                        <li>
                            <a href="nota-fiscal.php?id={nNF}">
                                <xsl:value-of select="dEmi" /> - <xsl:value-of select="emit/xNome" />
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>

                <div class="dashboard">
                    <h2>Dashboard</h2>

                    <p>
                        <strong>Total de notas fiscais:</strong>
                        <xsl:value-of select="count(//nfeProc/NFe)" />
                    </p>

                    <p>
                        <strong>Total de produtos:</strong>
                        <xsl:value-of select="count(//nfeProc/NFe/det/prod)" />
                    </p>

                    <p>
                        <strong>Valor total dos produtos:</strong>
                        <xsl:value-of select="sum(//nfeProc/NFe/det/prod/vProd)" />
                    </p>

                    <p>
                        <strong>Total de frete:</strong>
                        <xsl:value-of select="sum(//nfeProc/NFe/total/vFrete)" />
                    </p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
