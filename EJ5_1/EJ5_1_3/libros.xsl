<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="ISO-8859-1"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Mi biblioteca personal</title>
        <style>
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

        <h2>Libros de Javier Ortega con coste superior a 10 €</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
          <xsl:for-each select="libros/libro[precio &gt; 10 and autor = 'Carlos López']">
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="numPaginas"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <h2>Libros con precio superior a 12 €</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
          <xsl:for-each select="libros/libro[precio &gt; 12]">
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="numPaginas"/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>