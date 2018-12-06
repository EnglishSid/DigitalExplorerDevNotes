MATCH (ia:InnovationAgenda)
WHERE
toLower(ia.bvfName) CONTAINS '.jpg'
OR toLower(ia.bvfName) CONTAINS '.jpeg'
OR toLower(ia.bvfName) CONTAINS '.png'
WITH 'https://digitalexplorer.dxc.com/wwb/api/file/' + ia.bvfName as newUri, 'LOCAL' as attachmentType, 'Image' as docType, 0 as size, 'Business Value Framework' as attachmentName, ia
CREATE (a:Attachment {uri: newUri, name: attachmentName, size: size, attachmentType: attachmentType, docType: docType})
CREATE (ia)-[r:DESCRIBEDBY]->(a)
REMOVE ia.bvfName
RETURN ia, a
UNION
MATCH (ia:InnovationAgenda)
WHERE
toLower(ia.bvfName) CONTAINS '.pptx'
WITH 'https://digitalexplorer.dxc.com/wwb/api/file/' + ia.bvfName as newUri, 'LOCAL' as attachmentType, 'PPTX' as docType, 0 as size, 'Business Value Framework' as attachmentName, ia
CREATE (a:Attachment {uri: newUri, name: attachmentName, size: size, attachmentType: attachmentType, docType: docType})
CREATE (ia)-[r:DESCRIBEDBY]->(a)
REMOVE ia.bvfName
RETURN ia, a
UNION
MATCH (ia:InnovationAgenda)
WHERE
toLower(ia.bvfName) CONTAINS '.xlsx'
WITH 'https://digitalexplorer.dxc.com/wwb/api/file/' + ia.bvfName as newUri, 'LOCAL' as attachmentType, 'XLSX' as docType, 0 as size, 'Business Value Framework' as attachmentName, ia
CREATE (a:Attachment {uri: newUri, name: attachmentName, size: size, attachmentType: attachmentType, docType: docType})
CREATE (ia)-[r:DESCRIBEDBY]->(a)
REMOVE ia.bvfName
RETURN ia, a
UNION
MATCH (ia:InnovationAgenda)
WHERE
toLower(ia.bvfName) CONTAINS '.pdf'
WITH 'https://digitalexplorer.dxc.com/wwb/api/file/' + ia.bvfName as newUri, 'LOCAL' as attachmentType, 'PDF' as docType, 0 as size, 'Business Value Framework' as attachmentName, ia
CREATE (a:Attachment {uri: newUri, name: attachmentName, size: size, attachmentType: attachmentType, docType: docType})
CREATE (ia)-[r:DESCRIBEDBY]->(a)
REMOVE ia.bvfName
RETURN ia, a