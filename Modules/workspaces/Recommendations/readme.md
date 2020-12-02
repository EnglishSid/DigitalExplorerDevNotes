

MATCH (n:Person)-[CREATED]->(:BusinessTrendLink)<-[ASSIGNED_VIA]-(bt:BusinessTrend) WHERE ID(bt) =2747   
         RETURN ID(n) AS id, n.name AS name, LABELS(n)[0] AS type, n.status AS status, {email: n.email, createdBTrend: bt.name  AS data LIMIT 5  
         UNION  
         MATCH (n:Person)-[CREATED]->(tt:TechnologyTrend) WHERE ID(tt) =2747   
         RETURN ID(n) AS id, n.name AS name, LABELS(n)[0] AS type, n.status AS status, {email: n.email, createdTTrend: tt.name  AS data LIMIT 5  
         UNION  
         MATCH (n:Person)-[r:ASSIGNED]->(s:Solution)<-[INFLUENCE]-(bt:BusinessTrend) WHERE ID(bt) =2747  
         AND (NOT EXISTS(r.isAdministrative) OR r.isAdministrative = false)  
         RETURN ID(n) AS id, n.name AS name, LABELS(n)[0] AS type, n.status AS status, {email: n.email, assignedToSolution: s.name  AS data LIMIT 5  
         UNION  
         MATCH (n:Person)-[r:ASSIGNED]->(s:Solution)<-[INFLUENCE]-(tt:TechnologyTrend) WHERE ID(tt) =2747  
         AND (NOT EXISTS(r.isAdministrative) OR r.isAdministrative = false)  
         RETURN ID(n) AS id, n.name AS name, LABELS(n)[0] AS type, n.status AS status, {email: n.email, assignedToSolution: s.name  AS data LIMIT 5  
         UNION  
         MATCH (n:Solution)<-[INFLUENCE]-(bt:BusinessTrend) WHERE ID(bt) =2747   
         AND n.isPrivate = false   
         RETURN ID(n) AS id, n.name AS name, labels(n)[0] AS type, n.status AS status, {elevatorPitch: n.elevatorPitch, influencedWithBT: bt.name  AS data LIMIT 5  
         UNION  
         MATCH (n:Solution)<-[INFLUENCE]-(tt:TechnologyTrend) WHERE ID(tt) =2747   
         AND n.isPrivate = false   
         RETURN ID(n) AS id, n.name AS name, labels(n)[0] AS type, n.status AS status, {elevatorPitch: n.elevatorPitch, influencedWithTT: tt.name  AS data LIMIT 5  