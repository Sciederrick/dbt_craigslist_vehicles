select paint_color, count(*) as vehicle_count 
from {{ ref('stg_car_details') }}
group by paint_color
order by vehicle_count DESC