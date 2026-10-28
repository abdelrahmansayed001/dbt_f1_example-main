select 
    distinct driver_first_name as first_name,
             driver_last_name as last_name,
             driver_short_name 
from {{ ref('stg_results') }}