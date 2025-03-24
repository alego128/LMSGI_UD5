<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:for-each select="root/record[date/year &gt;= 1789]">
      <xsl:sort select="date/year" order="descending" data-type="number"/>
      <xsl:value-of select="id"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="title"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="date/year"/>
      <xsl:text>&#xA;</xsl:text> 
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>