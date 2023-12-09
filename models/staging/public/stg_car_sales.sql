select 
    CAST(id AS INTEGER) AS id,
    CAST(price AS FLOAT) AS price,
    CAST(yr AS INTEGER) AS yr,
    CAST(odometer AS INTEGER) AS odometer,
    CAST(lat AS FLOAT) AS lat,
    CAST(lon AS FLOAT) AS lon,
    CAST(posting_date AS DATE) AS posting_date,
    CAST(removal_date AS DATE) AS removal_date
    
from {{ source('public', 'craigslist_vehicles') }}