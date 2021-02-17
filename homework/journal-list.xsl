<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space()"/>
    </xsl:template>

    <xsl:template match="div[@class='interior-content']/ul">
        <xsl:result-document href="/Users/alexismurrell/Desktop/scraped-data.xml">
            <journal_data>
                <xsl:apply-templates select="li">
                    <xsl:sort select="p[1]/span"/>
                </xsl:apply-templates>
            </journal_data>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="li">
        <journal_record>
            <xsl:apply-templates/>
        </journal_record>
    </xsl:template>
    
    <xsl:template match="a">
        <title>
            <xsl:apply-templates/>
        </title>
        <journal_url>
            <xsl:value-of select="@href"/>
        </journal_url>
    </xsl:template>

    <xsl:template match="span">
        <institution>
            <xsl:value-of select="substring-after(text(), '- ')"/>
        </institution>
    </xsl:template>
    
    <xsl:template match="p[2]">
        <journal_description>
            <xsl:apply-templates/>
        </journal_description>
    </xsl:template>
    
</xsl:stylesheet>
