<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="rdf:RDF/foaf:Person">
        <h2>
            name:
            <xsl:value-of select="foaf:name" />
        </h2>
    </xsl:template>
    <xsl:template match="rdf:RDF/foaf:knows/foaf:Person">
        <p>
            see also :
            <xsl:value-of select="foaf:seeAlso" />
        </p>
    </xsl:template>
</xsl:stylesheet>