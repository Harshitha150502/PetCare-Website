<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body style="background-color:pink">
<center>
<h2>STUDENT INFORMATION:</h2>
</center>
<table border="3" align="center">
<tr style="background-color:teal;color:white;">
<th>USN</th>
<th>NAME</th>
<th>COLLEGE</th>
<th>BRANCH</th>
<th>YEAR OF JOINING</th>
<th>EMAIL</th>
</tr>
<xsl:for-each select="VTU/STUDENT[USN='1NH19CS002']">
<tr>
<td>
<xsl:value-of select="USN"/>
</td>
<td>
<xsl:value-of select="NAME"/>
</td>
<td>
<xsl:value-of select="COLLEGE"/>
</td>
<td>
<xsl:value-of select="BRANCH"/>
</td>
<td>
<xsl:value-of select="YOJ"/>
</td>
<td>
<xsl:value-of select="EMAIL"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!ELEMENT VTU (STUDENT+)>
<!ELEMENT STUDENT (USN,NAME,COLLEGE,BRANCH,YOJ,EMAIL)>
<!ELEMENT USN (#PCDATA)>
<!ELEMENT NAME (#PCDATA)>
<!ELEMENT COLLEGE (#PCDATA)>
<!ELEMENT BRANCH (#PCDATA)>
<!ELEMENT YOJ (#PCDATA)>
<!ELEMENT EMAIL (#PCDATA) >
<!ENTITY Ise "Information Science and Engineering">
<!ENTITY Cse "Computer Science and Engineering">
<!ENTITY Ece "Electronics and Communication Engineering">
<!ENTITY NHCE "New Horizon College of Engineering,Bengaluru">
</xml>