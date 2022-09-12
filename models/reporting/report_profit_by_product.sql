select 
PRODUCTID,
PRODUCTNAME,
CATEGORY,
SUBCATEGORY,

sum(ODERPROFIT) as profit

from {{ ref('stg_orders') }}
group by 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
