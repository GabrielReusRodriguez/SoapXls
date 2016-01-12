<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="xml" indent="yes" />

	<xsl:template name="add_cdata">
		<xsl:param name="node" />
		<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
		<xsl:copy-of select="$node" />
		<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
	</xsl:template>

</xsl:stylesheet>