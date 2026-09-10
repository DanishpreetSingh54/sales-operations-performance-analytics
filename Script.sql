select * from fmcg

-- CLEANING
-- 1. merapikan format Sales_Date
select distinct "Sales_Date" from fmcg

select "Sales_Date",
case
	when "Sales_Date" ~ '^\d{2}/\d{2}/\d{4}$' then to_date("Sales_Date", 'DD/MM/YYYY')
	when "Sales_Date" ~ '^[A-Za-z]+ - \d{1,2} - \d{4}$' then to_date("Sales_Date", 'Month-DD-YYYY')
	else "Sales_Date"::date
end as cleaned_sales_date
from fmcg

-- 2. memperbaiki penggunaan kata kolom City
select distinct "City" from fmcg
select "City",
case
	when "City" = 'Jogja' then 'Yogyakarta'
	when "City" = 'Bandng' then 'Bandung'
	when "City" = 'Sby' then 'Surabaya'
	when "City" = 'Jakrta' then 'Jakarta'
	else "City"
end as cleaned_city
from fmcg

-- 3. memperbaiki penggunaan kata kolom SKU_Category
select distinct "SKU_Category" from fmcg
select 
	"SKU_Category",
	initcap(lower("SKU_Category")) as cleaned_skucat
from fmcg

-- 4. memperbaiki penggunaan kata kolom Brand
select distinct "Brand" from fmcg
select "Brand",
case
	when "Brand" = 'Brand-C' then replace("Brand",'-',' ')
	when "Brand" in ('Brand b','brand b') then 'Brand B'
	when "Brand" = 'BrandA' then 'Brand A'
	else "Brand"
end as cleaned_brand
from fmcg

-- 5 memperbaiki penggunaan kata Outlet_Type
select distinct "Outlet_Type" from fmcg
select "Outlet_Type",
case
	when "Outlet_Type" = 'MT' then 'Modern Trade'
	when "Outlet_Type" = 'GT' then 'General Trade'
	else "Outlet_Type"
end as cleaned_outlet_type
from fmcg

-- CLEAN NULL/missing
select count(*) as jml_missing
from fmcg
where "Retailer_ID" is null

select count(*) as jml_missing
from fmcg
where "Retailer_ID"  = '' --644(retailer_id)

-- 6. action null Retailer_ID
select 
	coalesce(nullif("Retailer_ID",''),'Unknown') as cleaned_retailer_id
from fmcg

-- 7. action missing Discount_Pct
select * from fmcg 
where "Discount_Pct" is null
limit 20 -- the result is sales_value = units_sold x unit_price

select 
	"Discount_Pct",
	coalesce("Discount_Pct",0) as cleaned_discount_pct
from fmcg 

-- 8. action missing Loyalty_Flag
select
	"Loyalty_Flag",
	case 
		when "Loyalty_Flag" = '' then 'N' 
		else "Loyalty_Flag" 
	end as cleaned_loyalty_flag
from fmcg 

-- 9. action missing Return_Flag
select
	"Return_Flag",
	case 
		when "Return_Flag" = '' then 'N' 
		else "Return_Flag" 
	end as cleaned_return_flag
from fmcg 


--DATA CLEAN
with fmcg_clean as (
	select *,
		-- 1. action null Retailer_ID
			coalesce(nullif("Retailer_ID",''),'Unknown') as retailer_id,
			
		-- 2. merapikan format Sales_Date
		case
			when "Sales_Date" ~ '^\d{2}/\d{2}/\d{4}$' then to_date("Sales_Date", 'DD/MM/YYYY')
			when "Sales_Date" ~ '^[A-Za-z]+ - \d{1,2} - \d{4}$' then to_date("Sales_Date", 'Month-DD-YYYY')
			else "Sales_Date"::date
		end as sales_date,
		
		-- 3. standarisasi City
		case
			when "City" = 'Jogja' then 'Yogyakarta'
			when "City" = 'Bandng' then 'Bandung'
			when "City" = 'Sby' then 'Surabaya'
			when "City" = 'Jakrta' then 'Jakarta'
			else "City"
		end as city,
		
		-- 4. memperbaiki penggunaan kata kolom SKU_Category
		initcap(lower("SKU_Category")) as sku_category,

		-- 5. memperbaiki penggunaan kata kolom Brand
		case
			when "Brand" = 'Brand-C' then replace("Brand",'-',' ')
			when "Brand" in ('Brand b','brand b') then 'Brand B'
			when "Brand" = 'BrandA' then 'Brand A'
			else "Brand"
		end as brand,
		
		-- 6. action null Discount_Pct
		coalesce("Discount_Pct",0) as discount_pct,

		-- 7. memperbaiki penggunaan kata Outlet_Type
		case
			when "Outlet_Type" = 'MT' then 'Modern Trade'
			when "Outlet_Type" = 'GT' then 'General Trade'
			else "Outlet_Type"
		end as outlet_type,
		
		-- 8. action missing Loyalty_Flag
			case 
				when "Loyalty_Flag" = '' then 'N' 
				else "Loyalty_Flag" 
			end as loyalty_flag,

		-- 9. action missing Return_Flag
			case 
				when "Return_Flag" = '' then 'N' 
				else "Return_Flag" 
			end as return_flag
	from fmcg
)
select 
	"Invoice_No",
	retailer_id,
    sales_date,
    city,
    sku_category,
    brand,
    "Units_Sold",
    "Unit_Price",
    discount_pct,
    "Sales_Value",
    "COGS",
    outlet_type,
    "Sales_Channel",
    "Customer_Age",
    loyalty_flag,
    return_flag,
    "Target_Sales"
from fmcg_clean