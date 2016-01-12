<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope">
	<xsl:output method="xml" encoding="UTF-8" />

	<!-- Functions -->
	<xsl:template name="add_soap_v1_2_headers">
		<xsl:param name="node" />
		<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xmlns:xsd="http://www.w3.org/2001/XMLSchema">
			<soapenv:Header />
			<soapenv:Body>
				<xsl:copy-of select="$node" />
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>

	<xsl:template name="get_soap_v1_2_body">
		<xsl:copy-of select="/soapenv:Envelope/soapenv:Body/*" />
	</xsl:template>

	<!-- Generic -->
	<xsl:template match="/">
		<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xmlns:xsd="http://www.w3.org/2001/XMLSchema">
			<soapenv:Header />
			<soapenv:Body>
				<xsl:copy-of select="/*"></xsl:copy-of>
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>


</xsl:stylesheet>