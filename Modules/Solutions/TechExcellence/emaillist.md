# query for return list of people to email

match (s:Solution)
where s.creationDate > 1504224000000
and s.creationDate < 1535760000000
return distinct s.createdBy

