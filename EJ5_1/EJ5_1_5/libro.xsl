<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="ISO-8859-1"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Mi biblioteca personal</title>
        <style>
          body{
            background-color:#556;
          }
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            padding: 8px;
            border: 1px solid #ddd;
          }
          th {
            background-color: #f2f6;
          }
        </style>
      </head>
      <body>
        <h1>Mi biblioteca personal</h1>

        <h2>Libros</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>

          <xsl:for-each select="libros/libro">
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="numPaginas &gt; 150">
                    <span style="color: red;"><xsl:value-of select="numPaginas"/></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="numPaginas"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
