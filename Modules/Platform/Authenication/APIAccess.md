# DE API Access Controls for DXC and NON-DXC users

## META
|   | DXC-GET | DXC-POST | DXC-PUT | DXC-DELETE | nDXC-GET | nDXC-POST | nDXC-PUT | nDXC-DELETE |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| account-controller | y | y | y | na | y | n | n | na |
| meta-business-areas-controller | y | y | y | y | y | n | n | n |
| meta-categories-controller | y | y | y | y | y | n | n | n |
| meta-documentation-category-controller | y | y | y | y | y | n | n | n |
| meta-feature-categories-controller | y | y | y | y | y | n | n | n |
| meta-feature-relations-controller | y | y | y | y | y | n | n | n |
| meta-industries-controller | y | y | y | y | y | n | n | n |
| meta-person-roles-controller | y | y | y | y | y | n | n | n |
| meta-practices-controller | y | y | y | y | y | n | n | n |
| meta-statuses-controller | y | y | y | y | y | n | n | n |
| meta-sub-industries-controller | y | y | y | y | y | n | n | n |
| meta-technology-groups-controller | y | y | y | y | y | n | n | n |
| region-controller | y | na | na | na | y | na | na | na |
| solution-type-controller | y | y | y | y | y | n | n | n |

---
## MAIN

|   | DXC-GET | DXC-POST | DXC-PUT | DXC-DELETE | nDXC-GET | nDXC-POST | nDXC-PUT | nDXC-DELETE |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| achievement-controller | y | na | na | na | y | na | na | na |
| agenda-controller | y | y | y | y | y | n | n | n |
| agenda-disruptor-controller | y | na | na | na | y | na | na | na |
| agenda-insights-controller | y | na | na | na | n | na | na | na |
| agenda-signals-controller | y | na | na | na | n | na | na | na |
| agenda-template-controller | y | y | y | y | y | y | y | y |
| bvr-data-export-controller | y | na | na | na | n | na | na | na |
| client-disruptor-controller | na | na | y | na | na | na | n? | na |
| client-strategic-initiative-controller | y | y | na | y | y | n | na | n |
| comment-controller | y | y | y | y | n | n | n | n |
| digital-explorer-controller | y | na | na | na | y | na | na | na |
| event-controller | na | y | y | na | na | y | y | na |
| feature-controller | y | na | na | na | y | na | na | na |
| file-controller | y | na | y | y | y | na | n | n |
| filter-controller | y | na | na | na | y | na | na | na |
| graph-explorer-controller | y | na | na | na | y | na | na | na |
| industry-controller | y | na | na | na | y | na | na | na |
| internal-program-controller | y | y | y | y | n | n | n | n |
| maintenance-controller | y | y | y | y | n | n | n | n |
| pdf-generator-controller | y | na | na | na | y | na | na | na |
| person-controller | y | y | na | y | y | n | na | n |
| persons-role-controller | y | na | na | na | y | na | na | na |
| practice-controller | y | na | na | na | y | na | na | na |
| search-controller | y | na | na | na | y | na | na | na |
| solution-controller | y | y | na | y | y | y | na | y |
| solution-sync-controller | y | na | na | na | n | na | na | na |
| stats-controller | y | na | na | na | n | na | na | na |
| tags-controller | y | na | na | na | y | na | na | na |
| user-controller | y | na | na | na | y | na | na | na |
| workspace-controller | y | y | y | y | y | y | y | y |

---
## DIGITAL EXPLORER
|   | DXC-GET | DXC-POST | DXC-PUT | DXC-DELETE | nDXC-GET | nDXC-POST | nDXC-PUT | nDXC-DELETE |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| business-trend-controller | y | y | y | y | y | n | n | n |
| contributor-controller | y | na | na | na | n | n | n | n |
| digital-explorer-controller | y | na | na | na | y | na | na | na |
| pending-business-trends-controller | y | na | y | na | n | n | n | n |
| pending-technology-trends-controller | y | na | y | na | n | n | n | n |
| recommendation-controller | y | na | na | na | y | na | na | na |
| story-controller | y | y | y | y | y | n | n | n |
| story-health-check-controller | y | na | na | y | n | n | n | n |
| technology-trend-controller | y | y | y | y | y | n | n | n |
| trend-controller | y | na | na | na | y | na | na | na |
| user-business-trends-controller | y | na | y | na | y | na | n | na |
| user-technology-trends-controller | y | na | y | na | y | na | n | na |



---
## DELIVERY EXPLORER
|   | DXC-GET | DXC-POST | DXC-PUT | DXC-DELETE | nDXC-GET | nDXC-POST | nDXC-PUT | nDXC-DELETE |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| account-solution-search-controller | y | na | na | na | n | n | n | n |
| delivery-asset-controller | y | y | y | y | n | n | n | n |
| delivery-center-controller | y | y | y | y | n | n | n | n |
| delivery-expert-controller | y | y | y | y | n | n | n | n |
| delivery-explorer-controller | y | na | na | na | n | n | n | n |
