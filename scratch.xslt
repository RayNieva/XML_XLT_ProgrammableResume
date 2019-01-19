<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml"  />

  <!--Assign contents of marketITPro.xml to var-->
  <xsl:variable name="ItemLookup"-->
  		select="document('marketITPro.xml')>
    <!-- Define Key -->
    <xsl:key name="ItemKey" match="item" use="@id" />

    <!-- Plug in key value -->
    <xsl:template match="/">
      <xsl:variable name="ItemKey" select="@id"  />
     <xsl:for-each select="Item">
        <xsl:value-of select=current() />
     	<xsl:text>. </xsl:text>
     </xsl:for-each>
    </xsl:template>




</xsl:stylesheet>






