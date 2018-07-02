//1st Trend
MERGE (a:Achievement {name:'OnboardTrends', shortName:'Onboard Trends', description:'Submitted first trend', badgeImageURL:'assets/images/badges/onboardtrends.png', module:'Trends'})
with count(*) as dummy
//10th Trend
MERGE (a:Achievement {name:'ThoughtLeader', shortName:'Thought Leader', description:'Submitted 10th trend', badgeImageURL:'assets/images/badges/thoughtleader.png', module:'Trends'})
with count(*) as dummy
//Industry Banking & Capital Markets
MERGE (a:Achievement {name:'TrendIndustrialistBanking', shortName:'Trend Industrialist : Banking & Capital Markets' , description:'Submitted your first trend for the Banking & Capital Markets industry', badgeImageURL:'assets/images/badges/TrendIndustrialistbanking.png', industry:'Banking & Capital Markets', module:'Trends'})
with count(*) as dummy
//Industry Communications, Media & Entertainment
MERGE (a:Achievement {name:'TrendIndustrialistCommunications', shortName:'Trend Industrialist : Communications, Media & Entertainment' , description:'Submitted your first trend for the Communications, Media & Entertainment industry', badgeImageURL:'assets/images/badges/TrendIndustrialistcommunications.png', industry:'Communications, Media & Entertainment', module:'Trends'})
with count(*) as dummy
//Industry Consumer Industries & Retail
MERGE (a:Achievement {name:'TrendIndustrialistConsumer', shortName:'Trend Industrialist : Consumer Industries & Retail' , description:'Submitted your first trend for the Consumer Industries & Retail industry', badgeImageURL:'assets/images/badges/TrendIndustrialistconsumer.png', industry:'Consumer Industries & Retail', module:'Trends'})
with count(*) as dummy
//Industry Energy
MERGE (a:Achievement {name:'TrendIndustrialistEnergy', shortName:'Trend Industrialist : Energy' , description:'Submitted your first trend for the Energy industry', badgeImageURL:'assets/images/badges/TrendIndustrialistenergy.png', industry:'Energy', module:'Trends'})
with count(*) as dummy
//Industry Healthcare & Life Sciences
MERGE (a:Achievement {name:'TrendIndustrialistHealthcare', shortName:'Trend Industrialist : Healthcare & Life Sciences' , description:'Submitted your first trend for the Healthcare & Life Sciences industry', badgeImageURL:'assets/images/badges/TrendIndustrialisthealthcare.png', industry:'Healthcare & Life Sciences', module:'Trends'})
with count(*) as dummy
//Industry Public Sector
MERGE (a:Achievement {name:'TrendIndustrialistPublicSector', shortName:'Trend Industrialist : Public Sector' , description:'Submitted your first trend for the Public Sector industry', badgeImageURL:'assets/images/badges/TrendIndustrialistpublicsector.png', industry:'Public Sector', module:'Trends'})
with count(*) as dummy
//Industry Travel & Transportation
MERGE (a:Achievement {name:'TrendIndustrialistTravel', shortName:'Trend Industrialist : Travel & Transportation' , description:'Submitted your first trend for the Travel & Transportation industry', badgeImageURL:'assets/images/badges/TrendIndustrialisttravel.png', industry:'Travel & Transportation', module:'Trends'})
with count(*) as dummy
//Industry Manufacturing
MERGE (a:Achievement {name:'TrendIndustrialistManufacturing', shortName:'Trend Industrialist : Manufacturing' , description:'Submitted your first trend for the Manufacturing industry', badgeImageURL:'assets/images/badges/TrendIndustrialistmanufacturing.png', industry:'Manufacturing', module:'Trends'})
with count(*) as dummy
//Industry Insurance
MERGE (a:Achievement {name:'TrendIndustrialistInsurance', shortName:'Trend Industrialist : Insurance' , description:'Submitted your first trend for the Insurance industry', badgeImageURL:'assets/images/badges/TrendIndustrialistinsurance.png', industry:'Insurance', module:'Trends'})
//Technology Trend
MERGE (a:Achievement {name:'TrendTechnologist', shortName:'Trend Technologist' , description:'Submit your first trend for a technology group', badgeImageURL:'assets/images/badges/TrendTechnologist.png', module:'Trends'})
---

# Relationships

//Industry
MATCH (a:Achievement),(i:Industry)
WITH a,i
WHERE a.industry=i.name
MERGE (a)<-[r:INCLUDES]-(i)
RETURN a,i
