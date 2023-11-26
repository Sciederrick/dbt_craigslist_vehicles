{{ set_quoted_identifiers_ignore_case() }}

select
    id,
    url,
    state,
    region,
    region_url,
    manufacturer,
    model,
    condition,
    cylinders,
    fuel,
    title_status,
    transmission,
    vin,
    drive,
    size,
    type,
    paint_color,
    image_url,
    description
    
from {{ source('public', 'craigslist_vehicles') }}
