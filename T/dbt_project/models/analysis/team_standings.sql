select
    race_year as year,
    team,
    sum(points::integer) as total_points
from {{ ref('fact_results') }}
group by year, team
order by year, total_points desc