select
lct.name,
COUNT(it.id) as item_count
from ldplite.inventory.item__t it
left join ldplite.inventory."location__t" llt on it.effective_location_id = llt.id
left join ldplite.inventory."loc-campus__t" lct on llt.campus_id = lct.id
group by lct.name
