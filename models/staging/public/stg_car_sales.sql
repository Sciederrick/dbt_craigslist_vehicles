{{ set_quoted_identifiers_ignore_case() }}

select 
    id, 
    price, 
    year, 
    odometer, 
    lat, 
    long, 
    posting_date, 
    removal_date
    
from {{ source('public', 'craigslist_vehicles') }}