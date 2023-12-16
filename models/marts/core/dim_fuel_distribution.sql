select fuel, count(*) as vehicle_count 
from {{ ref('stg_car_details') }}
group by fuel
order by vehicle_count DESC