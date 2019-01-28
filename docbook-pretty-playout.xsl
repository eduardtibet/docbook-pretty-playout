<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:fo="http://www.w3.org/1999/XSL/Format"
     xmlns:fm="http://freshmeat.net/projects/freshmeat-submit/"
     xmlns:d="http://docbook.org/ns/docbook"
     exclude-result-prefixes="d #default fm"
     version="1.0">

<!-- You can use either globally located DocBook XSL Stylesheets or the ones installed on your own machine/server. You can use either one import (local) or another one (global), but not both ones to import _stock_ xsl stylesheets. Uncommenting both imports may, in general case, lead to an unpredictable results! -->

     
<!-- ET: Uncomment this line and comment the next import statement, if you want to use DocBook stylesheets available globally (from CDN) -->
<!-- <xsl:import href="https://cdn.docbook.org/release/xsl/1.79.2/fo/docbook.xsl"/> -->

<!-- ET: Install a DocBook XSL stylesheets locally, change/configure the path to the fo/docbook.xsl on your machine if you want to work with a local copy of a stylesheets. It is the best choice for a faster rendering speeds -->  
 <xsl:import href="/opt/docbook/core/docbook5-xsl-latest/fo/docbook.xsl"/>

<xsl:param name="alignment">justify</xsl:param>
<!-- ET: glyphs type of the body (main text), used by fop to determine right font triplet  -->
<xsl:param name="body.font.family" select="'serif'"/>

<xsl:param name="body.font.master">10</xsl:param>

<xsl:param name="body.font.size">
 <xsl:value-of select="$body.font.master"/><xsl:text>pt</xsl:text>
</xsl:param>
<xsl:param name="draft.watermark.image" select="''"/>
<xsl:param name="fop1.extensions" select="1"/>
<xsl:param name="hyphenate">false</xsl:param>

<xsl:param name="ulink.show" select="1"/>
<xsl:param name="ulink.footnotes" select="1"/>

<xsl:param name="page.margin.bottom" select="'15mm'"/>

<xsl:param name="page.margin.inner">
  <xsl:choose>

    <xsl:when test="$double.sided != 0">25mm</xsl:when>
  
    <xsl:otherwise>20mm</xsl:otherwise>
  </xsl:choose>
</xsl:param>

<xsl:param name="page.margin.outer">
  <xsl:choose>
      <xsl:when test="$double.sided != 0">15mm</xsl:when>

    <xsl:otherwise>15mm</xsl:otherwise>
  </xsl:choose>
</xsl:param>

<xsl:param name="page.margin.top" select="'15mm'"/>

<xsl:param name="page.orientation" select="'portrait'"/>
 
<xsl:param name="paper.type" select="'A4'"/>

<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="5"/>

<xsl:attribute-set name="section.title.level1.properties">

  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.6"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
  
  <xsl:attribute name="start-indent">0mm</xsl:attribute>
  <xsl:attribute name="text-indent">0mm</xsl:attribute>
  <xsl:attribute name="font-weight">normal</xsl:attribute>
  <xsl:attribute name="border-bottom-color">grey</xsl:attribute>
  <xsl:attribute name="border-bottom-style">dashed</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level2.properties">

  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.4"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>

  <xsl:attribute name="start-indent">5mm</xsl:attribute>
  <xsl:attribute name="text-indent">5mm</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="section.title.level3.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master * 1.2"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
  <xsl:attribute name="start-indent">8mm</xsl:attribute>
  <xsl:attribute name="text-indent">8mm</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level4.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
  <xsl:attribute name="start-indent">12mm</xsl:attribute>
  <xsl:attribute name="text-indent">12mm</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level5.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="section.title.level6.properties">
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
</xsl:attribute-set>

<xsl:param name="title.font.family" select="'sans-serif'"/>

<xsl:param name="title.margin.left">
  <xsl:choose>
    <xsl:when test="$fop.extensions != 0">-4pc</xsl:when>
    <xsl:when test="$passivetex.extensions != 0">0pt</xsl:when>
    <xsl:otherwise>0mm</xsl:otherwise>
  </xsl:choose>
</xsl:param>

<xsl:param name="toc.max.depth">3</xsl:param>
<!-- ET: make a shade within the programlisting and such areas with monospace font -->
<xsl:param name="shade.verbatim" select="1"/>

<!-- ET: changing verbatim style to borderness -->
<xsl:attribute-set name="shade.verbatim.style">
  <xsl:attribute name="background-color">#e2eef2</xsl:attribute>
  <xsl:attribute name="border-width">0.5pt</xsl:attribute>
  <xsl:attribute name="border-style">solid</xsl:attribute>
  <xsl:attribute name="border-color">#aeaeae</xsl:attribute>
  <xsl:attribute name="padding">3pt</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    <xsl:attribute name="hyphenation-character">\</xsl:attribute>
</xsl:attribute-set>

<!-- ET: placement of title -->
<xsl:param name="formal.title.placement">
figure before
example before
equation before
table before
procedure before
</xsl:param>

<!-- ET: format of titles -->

<xsl:template name="formal.object.heading">
  <xsl:param name="object" select="."/>
  <xsl:param name="placement" select="'before'"/>

  <fo:block xsl:use-attribute-sets="formal.title.properties">
    <xsl:choose>
      <xsl:when test="$placement = 'before'">
        <xsl:attribute
               name="keep-with-next.within-column">always</xsl:attribute>
      </xsl:when>
      <xsl:otherwise>
        <xsl:attribute
               name="keep-with-previous.within-column">always</xsl:attribute>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates select="$object" mode="object.title.markup">
      <xsl:with-param name="allow-anchors" select="1"/>
    </xsl:apply-templates>
  </fo:block>
</xsl:template>

<!-- ET: format of the title - see previous section -->
<xsl:attribute-set name="formal.title.properties" use-attribute-sets="normal.para.spacing">
  <xsl:attribute name="font-weight">bold</xsl:attribute>
  <xsl:attribute name="color">#C43A3A</xsl:attribute>
  <xsl:attribute name="font-size">
    <xsl:value-of select="$body.font.master"/>
    <xsl:text>pt</xsl:text>
  </xsl:attribute>
  <xsl:attribute name="hyphenate">false</xsl:attribute>
  <xsl:attribute name="space-after.minimum">0.4em</xsl:attribute>
  <xsl:attribute name="space-after.optimum">0.6em</xsl:attribute>
  <xsl:attribute name="space-after.maximum">0.8em</xsl:attribute>
</xsl:attribute-set>

<!-- ET: display glossary as blocks --> 
<xsl:param name="glossary.as.blocks" select="0"/>
 
<!-- ET: redefined parameter from default italic to normal -->
<xsl:template match="d:parameter">
  <xsl:call-template name="inline.monoseq"/>
</xsl:template>

<!-- ET: include comments and|or remarks in result output -->
<xsl:param name="show.comments" select="1"/>

<!-- ET: redefined comment and remark to other color -->
<xsl:template match="d:comment|d:remark">
  <xsl:if test="$show.comments != 0">
    <fo:inline font-style="italic">
       <xsl:attribute name="color">#db6a37</xsl:attribute>  
       <xsl:call-template name="inline.charseq"/>
    </fo:inline>
  </xsl:if>
</xsl:template>

<!-- ET: Redefined output of xslt processing -->
<xsl:template name="root.messages">
  <!-- redefine this any way you'd like to output messages -->
  <!-- DO NOT OUTPUT ANYTHING FROM THIS TEMPLATE -->
  <xsl:message>
   <xsl:text>Generation based on </xsl:text>
   <xsl:value-of select="$DistroName"/>
   <xsl:text> </xsl:text>
   <xsl:value-of select="$VERSION"/>
  </xsl:message>
  
  <xsl:message>
    <xsl:text>Media: </xsl:text>
    <xsl:value-of select="$page.orientation"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="$paper.type"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="$page.width"/>
    <xsl:text> x </xsl:text>
    <xsl:value-of select="$page.height"/>
    <xsl:text>, </xsl:text>
    <xsl:choose>
     <xsl:when test="$double.sided != 0"><xsl:text>2-sided</xsl:text></xsl:when>
     <xsl:otherwise><xsl:text>1-sided</xsl:text></xsl:otherwise>
    </xsl:choose>
  </xsl:message>
</xsl:template>

<!-- ET: Title formatting of Note, warning and other information labels -->
<xsl:attribute-set name="admonition.title.properties">
  <xsl:attribute name="font-size">10pt</xsl:attribute>
  <xsl:attribute name="font-weight">bold</xsl:attribute>
  <xsl:attribute name="hyphenate">false</xsl:attribute>
<!--ET: TEST see background-color near admonition.title.properties below  -->
  <xsl:attribute name="background-color">#eeeeee</xsl:attribute>
  <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
  <xsl:attribute name="padding-before">5pt</xsl:attribute>
  <xsl:attribute name="padding-after">0pt</xsl:attribute>
  <xsl:attribute name="padding-left">10pt</xsl:attribute>
  <xsl:attribute name="padding-right">10pt</xsl:attribute>
</xsl:attribute-set>

<!-- Note, warning and other information labels formatting -->
<xsl:attribute-set name="admonition.properties">
<!--ET: TEST see background-color near admonition.title.properties below  -->
<xsl:attribute name="background-color">#eeeeee</xsl:attribute>
<xsl:attribute name="padding-before">0pt</xsl:attribute>
<xsl:attribute name="padding-after">5pt</xsl:attribute>
<xsl:attribute name="padding-left">10pt</xsl:attribute>
<xsl:attribute name="padding-right">10pt</xsl:attribute>
</xsl:attribute-set>
<!-- END of Note, warning and other information labels formatting -->

<!-- Change formatting of Guimenu - the main gui tagin doc - changed from .inseq to .boldseq-->
<xsl:template match="guimenu">
  <xsl:call-template name="inline.boldseq"/>
</xsl:template>
<!-- END of change formatting of Guimenu -->

</xsl:stylesheet>