with customer as (
    select *
    from {{ ref('stg_customers') }}
),

nation as (
    select *
    from {{ ref('stg_nations') }}
),

region as (
    select *
    from {{ ref('stg_regions') }}
)

select 
    customer.*,
    nation.name as nation,
    region.name as region
from customer
join nation
    on customer.nation_id = nation.nation_id
join region
    on nation.region_id = region.region_id