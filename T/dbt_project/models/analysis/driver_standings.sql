select
    first_name,
    last_name,
    count(*) as wins
from {{ ref('fact_results') }}
where position = '1'
group by first_name, last_name
order by wins desc