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

        <h2>Todos los libros ordenados por precio</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
          <xsl:for-each select="libros/libro">
            <xsl:sort select="precio" data-type="number" order="ascending"/>
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="numPaginas"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <h2>Libros de Sofía Mendez ordenados por precio</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
          <xsl:for-each select="libros/libro[autor='Sofía Mendez']">
            <xsl:sort select="precio" data-type="number" order="ascending"/>
            <tr>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="numPaginas"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <h2>Libros que no son de Sofía Mendez</h2>
        <table>
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
         <xsl:for-each select="libros/libro[not(autor='Sofía Mendez')]">
            <xsl:sort select="precio" data-type="number" order="ascending"/>
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
