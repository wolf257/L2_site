<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/versets">
        <ul>

                <xsl:for-each select="couple">
                    <xsl:if test="@lot = 'montagne' ">

                     <div class="ensemble">
                         <h3> <xsl:value-of select="ordre"/> </h3>

                         <div class="fr_ens">
                             <p style="text-decoration:underline"> Énoncé du commandement : </p>
                             <p class="fr"> <xsl:value-of select="francais"/> </p>
                         </div>

                         <div class="ar_ens">
                             <p class="ar"> <xsl:value-of select="arabe"/> </p>
                         </div>

                         <div class="trad_ens">
                             <p style="text-decoration:underline"> Traduction du verset : </p>
                             <p class="fr"> <xsl:value-of select="verse_fr"/> </p>
                         </div>

                         <div class="ref">
                             <xsl:value-of select="surat"/>
                             <xsl:value-of select="verse"/>
                         </div>
                      <xsl:element name="audio">
                             <xsl:attribute name="controls">
                                     <p> controls </p>
                             </xsl:attribute>
                             <xsl:attribute name="src">
                                     <xsl:value-of select="lien"/>
                             </xsl:attribute>
                             <xsl:attribute name="type">
                                     <p> audio/mpeg </p>
                             </xsl:attribute>
                         <p> votre navigateur n'accepte pas les audios. </p>
                     </xsl:element>

                     <a href="montagne.html#top"> Retour en haut </a>

                    </div>

                    </xsl:if>
                </xsl:for-each>

        </ul>
    </xsl:template>

</xsl:stylesheet>
