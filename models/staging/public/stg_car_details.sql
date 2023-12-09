select
    CAST(id AS INTEGER) AS id,
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
    CAST(description AS TEXT) AS description
    
from {{ source('public', 'craigslist_vehicles') }}
