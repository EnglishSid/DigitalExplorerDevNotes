# Initial Load
Initial load will match against feature name, if match found update with WWS ID (solution and feature)

- if match not found add and consider new and correct feature from WWS master

## for features without WWS ID's

- if **no** relationship to other solutions - delete
- if relationship to other solution - :mag: review

## for solutions without WWS ID's
- if **no** features delete
- if **no** features map to other solutions - delete
- if features map to other solutions - :mag: review


### Relationship to Practice nodes
- Only solutions within the WWS sync should be related to the Practice node
- Ensure solution search for Offering Families is updated to "back track" from features to find offering
- Action: :exclamation: remove all relationships to non offering solutions to the practice nodes