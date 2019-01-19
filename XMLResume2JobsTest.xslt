<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/">


<xsl:text>"id","title","dates","company","description"</xsl:text>
<xsl:text>&#10;</xsl:text>

<xsl:for-each select="//job">

<!--<xsl:copy-of select="."/>-->


<xsl:text>"</xsl:text>
<xsl:value-of select="@id"/>
<xsl:text>"</xsl:text>
<xsl:text>,</xsl:text>



<xsl:text>"</xsl:text>
<xsl:value-of select="title"/>
<xsl:text>"</xsl:text>
<xsl:text>,</xsl:text>


<xsl:text>"</xsl:text>
<xsl:value-of select="dates"/>
<xsl:text>"</xsl:text>
<xsl:text>,</xsl:text>



<xsl:text>"</xsl:text>
<xsl:value-of select="company"/>
<xsl:text>"</xsl:text>
<xsl:text>,</xsl:text>



<xsl:text>"</xsl:text>
<xsl:value-of select="description"/>
<xsl:text>"</xsl:text>
<xsl:text>&#10;</xsl:text>

<br/>&#10;



</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
