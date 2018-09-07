# Solution Search R2

## Review the potential to simplify the solution search algorithm within the DE platform.

Current approach has a mix of both WordNet and Solution scoring.   Solution scoring is based on the initial disclosure filing for targeting each layer of the solution model (business, functional and industry) and providing a weight score the result set.   This is further extended with the usage of WordNet for similarity matching against the the keywords and phrases provided by the user.

### Proposal
Continue to use WordNet, but target the overall solution model as a single search entity.

Properties to target within the search:

|Node|Property|
|---|---|
|Solution|name
|Solution|elevatorPitch
|Solution|description
|Solution|generalValue
|Motivation|Name
|Motivation|description
|businessTrend|name
|businessTrend|description
|technologyTrend|name
|technologyTrend|description
|Feature|name
|Feature|description
|Account|name
|Person|name
|Person|email

### Similarity matching
Similarity and WordNet should be used and detect potential matches within 2 connections of the provided search terms from the user

### Requirements
- Exact matches to be returned first
- Similarity matches are shown with clear information to the user - i.e.  **Missing : ~~word~~ (similar word)**
- Use the filters to refine the results based on `Type`, `Offering family`, `tag`, `industry`, `status`
