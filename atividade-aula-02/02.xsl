<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:import href="GioMovies-xsl.xsd" />

    <xsl:output method="xml" indent="yes" />

    <xsl:template match="/filmes">
        <filmes>
            <xsl:for-each select="filme">
                <xsl:if test="@duracao >= 90 and @duracao <= 150">
                    <filme>
                        <xsl:copy-of select="@*[not(name() = 'duracao')]" />
                        <duracao><xsl:value-of select="@duracao" /> min</duracao>
                    </filme>
                </xsl:if>
            </xsl:for-each>
        </filmes>
    </xsl:template>

</xsl:stylesheet>
