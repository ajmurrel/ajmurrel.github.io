<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog of Plants</title>
                <link rel="stylesheet" type="text/css" href="https://ajmurrel.github.io/css/main.css"/>
            </head>
            <body>
                <h1>Alexis's Plant Catalog</h1>
                <p>The table below outlines the plants listed in my catalog, along with each plant's growing zone, light requirements, price, and availability.</p>
                <style>
                    table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                    }
                    
                    td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                    }
                    
                    tr:nth-child(even) {
                    background-color: #d0f0c0;
                    }
                </style>
                <table>
                    <tr>
                        <th>Common Name</th>
                        <th>Botanical Name</th> 
                        <th>Zone</th>
                        <th>Light</th>
                        <th>Price</th>
                        <th>Availability</th>
                    </tr>
                    <xsl:for-each select="CATALOG/PLANT">
                        <tr>
                            <td><xsl:value-of select="COMMON" /></td>
                            <td><xsl:value-of select="BOTANICAL" /></td>
                            <td><xsl:value-of select="ZONE" /></td>
                            <td><xsl:value-of select="LIGHT" /></td>
                            <td><xsl:value-of select="PRICE" /></td>
                            <td><xsl:value-of select="AVAILABILITY" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
     </xsl:template>
</xsl:stylesheet>