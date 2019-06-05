# Updating the metrics


Grab the required metrics section from [here](DXCMetrics.md)

match against the existing title
update the required title and or subtext

### Example

~~~
MATCH (dm:DXCMetric)
WHERE dm.title='$21+B'
SET dm.title='$21B'
RETURN dm





~~~




connect to production database via neo browser

