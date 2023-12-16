-- Inventory: Geographical distribution of vehicle listing

select d.state, d.region, count(*) as vehicle_count
from {{ ref('stg_car_sales') }} as s join {{ ref('stg_car_details') }} as d using(id)
group by d.state, d.region
order by d.state, d.region, vehicle_count DESC