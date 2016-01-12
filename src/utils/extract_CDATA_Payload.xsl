<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"
	xmlns:p1="http://piuc.csi.org" xmlns:con="http://www.bea.com/wli/sb/context"
	xmlns:ns0="http://salut.gencat.cat/puc/dadesUrgencies/types/">
	<xsl:output method="xml" encoding="UTF-8" />

	<xsl:template match="/">
		<p1:MT_INT034_AltaDadesUrgenciaResposta>
			<xsl:apply-templates />
		</p1:MT_INT034_AltaDadesUrgenciaResposta>
	</xsl:template>

	<xsl:template match="soapenv:Envelope/soapenv:Body/ns0:publicarDadesUrgenciesResponseElement/ns0:result/text()">
<!-- 		<xsl:value-of -->
<!-- 			select="substring-before(substring-after(., '&lt;name>'), '&lt;/name>')" /> -->
			<xsl:value-of select="." disable-output-escaping="yes"/>
	</xsl:template>


</xsl:stylesheet>




