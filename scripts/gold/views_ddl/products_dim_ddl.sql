create view gold.dim_products as
select
    pi.prd_id as product_id,
    pi.prd_key as product_number,
    pi.prd_nm as product_name,
    pi.cat_id as category_id,
    pc.cat as category,
    pc.subcat as subcategory,
    pc.maintenance as maintenance,
    pi.prd_cost as cost,
    pi.prd_line as product_line,
    pi.prd_start_dt as start_date
from silver.crm_prd_info as pi
left join silver.erp_px_cat_g1v2 as pc
on pi.cat_id = pc.id
where pi.prd_end_dt is null                 -- Filtering out historical data
