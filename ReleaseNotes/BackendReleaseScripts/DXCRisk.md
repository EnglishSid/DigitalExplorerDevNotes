match (bt:BusinessTrend)--(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(i:Industry)
where i.name='DXC Risk'
set bt :Risk
return bt

