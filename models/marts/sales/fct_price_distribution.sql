-- Price distribution: average price by model
with 
sales as (

    select 
        id,
        yr,
        price
    
    from {{ ref('stg_car_sales') }}

    where price > 0

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
        round(avg(sales.price), 0) as avg_price

    from sales join details using (id)

    group by manufacturer, model, yr
    
)

select * from inventory 
order by manufacturer, model, yr, avg_price DESC 