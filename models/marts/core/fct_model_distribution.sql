-- Inventory: Vehicle count by manufacturer, model

with 
sales as (

    select 
        id,
        yr
    
    from {{ ref('stg_car_sales') }}

),
details as (

    select 
        id,
        manufacturer, 
        model

    from {{ ref('stg_car_details') }}

),
inventory as (

    select 
        details.manufacturer as manufacturer,
        details.model as model,
        sales.yr as yr,
        count(*) as vehicle_count

    from sales join details using (id)

    group by manufacturer, model, yr
    
)

select * from inventory 


