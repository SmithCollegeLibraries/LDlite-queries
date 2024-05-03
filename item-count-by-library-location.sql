select
llt.name,
COUNT(it.id) as item_count
from ldplite.inventory.item__t it
left join ldplite.inventory."location__t" llt on it.effective_location_id = llt.id
group by llt.name
