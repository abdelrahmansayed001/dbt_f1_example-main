select
    url as race_url,
    year as race_year,
    grand_prix,
    date as race_date
from {{ ref('stg_races') }}