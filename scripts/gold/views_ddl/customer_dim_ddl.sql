create view gold.dim_customers as 
select 
    row_number() over (order by ci.cst_id) as customer_key,
    ci.cst_id as customer_id,
    ci.cst_key as customer_number,
    ci.cst_firstname as firstname,
    ci.cst_lastname as lastname,
    ca.bdate as birth_date,
    cl.cntry as country,
    case 
        when ci.cst_gndr != 'n/a' then ci.cst_gndr
        else coalesce(ca.gen, 'n/a')
    end as gender, 
    ci.cst_marital_status as marital_status,
    ci.cst_create_date as date_created
from silver.crm_cust_info ci
left join silver.erp_cust_az12 ca 
on ci.cst_key = ca.cid
left join silver.erp_loc_a101 as cl 
on ci.cst_key = cl.cid;  
