<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>List of recipes</h2>
    <table border="1">
      <tr>
        <th>ID</th>
        <th>Name</th>
		<th>Number or reviews</th>
		<th>Rating</th>
		<th>Description</th>
		<th>Author</th>
      </tr>
      <xsl:for-each select="list/recipe">
        <tr>
			<td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="name"/></td>
          	<td><xsl:value-of select="num_of_reviews"/></td>
			<td>
                <xsl:value-of select="rating"/>/<xsl:value-of select="rating/@max_value"/>
            </td>
			<td><xsl:value-of select="description"/></td>
			<td><xsl:value-of select="author"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>