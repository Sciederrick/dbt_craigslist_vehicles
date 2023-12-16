select drive, count(*) as vehicle_count 
from {{ ref('stg_car_details') }}
group by drive
order by vehicle_count DESC