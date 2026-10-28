select
    r.url,
    rc.race_year,
    rc.grand_prix,
    r.driver_first_name as first_name,
    r.driver_last_name as last_name,
    r.driver_short_name as short_name,
    r.team,
    r.pos as position,
    r.pts as points
from {{ ref('stg_results') }} as r
join {{ ref('dim_races') }} as rc
    on r.url = rc.race_url