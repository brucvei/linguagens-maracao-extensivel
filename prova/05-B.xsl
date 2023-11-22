<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Nota fiscal</title>
            </head>
            <body>
                <h1>Nota fiscal</h1>

                <table>
                    <tr>
                        <th>Número</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/infNFe/ide/nNF" />
                        </td>
                    </tr>
                    <tr>
                        <th>Data de emissão</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/infNFe/ide/dEmi" />
                        </td>
                    </tr>
                    <tr>
                        <th>Emitente</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/emit/xNome" />
                        </td>
                    </tr>
                    <tr>
                        <th>Destinatário</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/dest/xNome" />
                        </td>
                    </tr>
                </table>

                <h2>Produtos</h2>

                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Descrição</th>
                            <th>Quantidade</th>
                            <th>Preço unitário</th>
                            <th>Valor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="nfeProc/NFe/det/prod">
                            <tr>
                                <td>
                                    <xsl:value-of select="cProd" />
                                </td>
                                <td>
                                    <xsl:value-of select="xProd" />
                                </td>
                                <td>
                                    <xsl:value-of select="qCom" />
                                </td>
                                <td>
                                    <xsl:value-of select="vUnCom" />
                                </td>
                                <td>
                                    <xsl:value-of select="vProd" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Valores</h2>

                <table>
                    <tr>
                        <th>Base de cálculo ICMS</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/total/vBC" />
                        </td>
                    </tr>
                    <tr>
                        <th>ICMS</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/total/vICMS" />
                        </td>
                    </tr>
                    <tr>
                        <th>Base de cálculo ISSQN</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/total/vBCISSQN" />
                        </td>
                    </tr>
                    <tr>
                        <th>ISSQN</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/total/vISSQN" />
                        </td>
                    </tr>
                    <tr>
                        <th>Total</th>
                        <td>
                            <xsl:value-of select="nfeProc/NFe/total/vNF" />
                        </td>
                    </tr>
                </table>

                <a href="index.html">Voltar</a>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
