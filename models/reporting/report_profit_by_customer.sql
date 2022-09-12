select 
CUSTOMERID,
SEGMENT,
COUNTRY,
sum(ODERPROFIT) as PROFIT
from
{{ ref('stg_orders') }}

GROUP BY
    CUSTOMERID,
    SEGMENT,
    COUNTRY
