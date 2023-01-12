<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<head>
			<title>GuestBook</title>
		</head>
		<html>
			<body>
				<table border="0" cellpadding="2c"	cellspacing="2c">
					<tr>
						<th>
							<b>Name</b>
						</th>
						<th>
							<b>Email</b>
						</th>
						<th>
							<b>Entry</b>
						</th>
					</tr>

					<xsl:for-each select="guestbook/guest">
						<tr>
							<td>
								<em>
									<xsl:value-of select="name"></xsl:value-of>
								</em>
							</td>
							<td>
								<em>
									<xsl:value-of select="email"></xsl:value-of>
								</em>
							</td>
							<td>
								<em>
									<xsl:value-of select="inscription"></xsl:value-of>
								</em>
							</td>
						</tr>
					</xsl:for-each>
					
				</table>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>
