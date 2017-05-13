<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

     <xsl:template match="/sommaire">

         <div id="menu">
             <ul>
                 <xsl:for-each select="bouton">
                    <li>
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                            <xsl:value-of select="lien"/>
                            </xsl:attribute>
                                <xsl:value-of select="titre"/>
                        </xsl:element>
                    </li>
                </xsl:for-each>
            </ul>
        </div>

    </xsl:template>

</xsl:stylesheet>
