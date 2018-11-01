LOAD csv with headers from "file:///centres.csv" AS Centers
MERGE (dc:DeliveryCenter {name:Centers.city})
MERGE (c:Country {name:Centers.country})
MERGE (dct:DeliveryCenterType {name:Centers.type,description:Centers.description})
MERGE (dc)-[:LOCATED_IN]->(c)
MERGE (dc)-[:OFTYPE]->(dct)



match (dct:DeliveryCenterType)--(dc:DeliveryCenter)--(c:Country) return dct,dc,c