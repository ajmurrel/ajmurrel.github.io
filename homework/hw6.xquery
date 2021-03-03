declare default element namespace "urn:isbn:1-931666-22-9";

<finding-aids>
{
for $finding-aid in collection("file:/Users/alexismurrell/Desktop/xquery-assignment?select=*.xml")/ead
let $changes := $finding-aid/eadheader/revisiondesc/change
let $year-one := $finding-aid/eadheader/filedesc/titlestmt/titleproper/date/substring-before(.,'-')
let $year-two := $finding-aid/eadheader/filedesc/titlestmt/titleproper/date/substring-after(.,'-')
let $size := $finding-aid/archdesc/did/physdesc/extent/substring-before(text(),' cubic')
(: I thought the easiest way to order the finding aids would be by the cubic feet measurement. I was 
having trouble ordering them without the substring expression because 12 wasn't being recognized as
larger than 6.2. I tried using xs:decimal and xs:integer with $size but that still it wasn't working 
because of the units text. This is when I decided to use the substring-before to capture only the numbers
and then order those. :)
order by xs:decimal($size) descending
return
<file>
    <idno>{data($finding-aid/eadheader/eadid)}</idno>
    <title>{normalize-space(data($finding-aid/eadheader/filedesc/titlestmt/titleproper))}</title>
    <yearsCovered>{number($year-two) - number($year-one)}</yearsCovered>   
    <encoder>{normalize-space(data($finding-aid/eadheader/filedesc/titlestmt/author/substring-after(., 'by')))}</encoder>
    <changesCount>{count($changes)}</changesCount>
    <extent>{data($finding-aid/archdesc/did/physdesc/extent)}</extent>
    <accessRestrict>{string-join($finding-aid/archdesc/accessrestrict/p, ' | ')}</accessRestrict>
    <fileCount>{count($finding-aid//c02[@level="file"])+count($finding-aid//c03[@level="file"])}</fileCount>
    <indexingTerms>
    {for $terms in $finding-aid/archdesc/controlaccess/controlaccess/list/item//extref
    return
    <term>{normalize-space(data($terms))}</term>}
    </indexingTerms>
</file>
}
</finding-aids>