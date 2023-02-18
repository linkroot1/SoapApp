<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/">
	 <xsl:apply-templates select="*"/>
   </xsl:template>

   <xsl:template match="/*">
         <xsl:element name="{name()}">
	    <xsl:apply-templates select="*"/>           
         </xsl:element>
   </xsl:template>

   <xsl:template match="/*/*">
   <xsl:choose>
      <xsl:when test="count(./*) = 0">
         <xsl:attribute name="{name()}">
	    <xsl:value-of select="."/>             
         </xsl:attribute >
      </xsl:when>
      <xsl:otherwise>
         <xsl:element name="{name()}">
            <xsl:apply-templates select="*"/>
         </xsl:element>
      </xsl:otherwise>
   </xsl:choose>
    </xsl:template>

   <xsl:template match="/*/*/*">
	 <xsl:attribute name="{name()}">
	    <xsl:value-of select="."/>             
         </xsl:attribute >
   </xsl:template>

</xsl:stylesheet>  