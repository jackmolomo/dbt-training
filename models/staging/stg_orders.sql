select 
o.orderid,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
o.ORDERCOSTPRICE- ORDERSELLINGPRICE as oderprofit,
o.ORDERCOSTPRICE,
o.ORDERSELLINGPRICE,
c.CUSTOMERID,
c.CUSTOMERNAME,
c.SEGMENT,
c.COUNTRY,
p.PRODUCTID,
p.CATEGORY,
p.PRODUCTNAME,
p.SUBCATEGORY


from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.CUSTOMERID = c.CUSTOMERID

left join  {{ ref('raw_product') }} as p
on o.PRODUCTID = p.PRODUCTID
