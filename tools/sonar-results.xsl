<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="/">
<testExecutions version="1">
    <xsl:for-each select="testsuites/testsuite">
  <file> 
      <xsl:attribute name="path">
        <xsl:value-of select="@name"/>
      </xsl:attribute>
      <xsl:for-each select="testcase">
    <testCase>
      <xsl:attribute name="name">
        <xsl:value-of select="@name"/>
      </xsl:attribute>
      <xsl:attribute name="duration">
        <xsl:value-of select="round(number(@time) * 1000)"/>
      </xsl:attribute>
      <xsl:for-each select="failure">
      <failure>
        <xsl:attribute name="message">
          <xsl:value-of select="@message"/>
        </xsl:attribute>
        <xsl:value-of select="."/>
      </failure>
      </xsl:for-each>
      <xsl:for-each select="error">
      <error>
        <xsl:attribute name="message"/>
        <xsl:value-of select="."/>
      </error>
      </xsl:for-each>
    </testCase>
      </xsl:for-each>
  </file>
    </xsl:for-each>
</testExecutions>
  </xsl:template>
</xsl:stylesheet>