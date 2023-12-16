select type, count(*) as vehicle_count
from {{ ref('stg_car_details') }}
group by type
order by vehicle_count DESC