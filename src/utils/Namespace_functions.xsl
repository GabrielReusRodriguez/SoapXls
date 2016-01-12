<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />

	<!-- Function -->
	<xsl:template name="remove_all_namespace">
		<xsl:param name="node" />
		<xsl:element name="{local-name($node)}">
			<xsl:apply-templates select="@* | node()" />
		</xsl:element>
	</xsl:template>
	<xsl:template match="@*">
		<xsl:attribute name="{local-name($node)}">
      <xsl:value-of select="$node" />
    </xsl:attribute>

	</xsl:template>

	<!-- Generic -->
	<xsl:template match="*">
		<xsl:element name="{local-name(.)}">
			<xsl:apply-templates select="@* | node()" />
		</xsl:element>
	</xsl:template>
	<!-- <xsl:template match="@*"> <xsl:attribute name="{local-name(.)}"> <xsl:value-of 
		select="." /> </xsl:attribute> </xsl:template> -->
</xsl:stylesheet>