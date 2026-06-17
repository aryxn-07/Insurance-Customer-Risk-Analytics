
-- Data Exploration --

-- 1. Total customers --
SELECT COUNT(*) AS total_customers
FROM insurance_customers;

-- 2. Average Age --
select avg(age)
from insurance_customers;

-- 3. Gender wise Distribution --
select gender, count(*) as num_of_cust
from insurance_customers
group by gender;

-- 4. Age Distribution --
select case
	when age < 30 then 'Under 30'
    when age between 30 and 50 then '30-50'
    when age > 50 then 'Over 50'
    end as Age_category,
 count(*) as no_of_customers
 from insurance_customers
 group by Age_category;
 
 -- 5. Previously Insured Customers--
 select Previously_Insured, count(*) as no_of_customers
 from insurance_customers
 group by Previously_Insured;
 
 -- 6. Average Premium --
 select avg(Annual_Premium) as Avg_Premium
 from insurance_customers;
 
 -- 7. Policy Sales Channels --
 select Policy_Sales_Channel as Pol_Channel, count(*)
 from insurance_customers
 group by Pol_Channel
 order by 2 desc;
 
 -- 8. Vehicle Damage Distribution --
 select Vehicle_Damage, count(*)
 from insurance_customers
 group by Vehicle_Damage;
 
 -- 9. Regional Distribution --
 select Region_Code, count(*)
 from insurance_customers
 group by Region_Code
 order by 2 desc;
 
 -- 10. Overall Response Rate --
select avg(Response)*100 as conversion_rate
from insurance_customers;

-- 11. Response Rate and Damage --
select  Vehicle_Damage,
      avg(Response)*100 as response_rate
from insurance_customers
group by Vehicle_Damage;

-- 12. Response by Previously Insured --
select Previously_Insured, avg(Response)*100 as Response_Rate
from insurance_customers
group by Previously_Insured;

 -- 13. Highest response age group --
with age_groups as 
(
select
	case
		when Age < 30 then 'Under 30'
		when Age between 30 and 50 then '30-50'
            else 'Above 50'
        end as age_group,
        Response
    from insurance_customers
)
select age_group,
    avg(Response)*100 as response_rate
from age_groups
group by age_group;   

 -- 14. Premium Ranking --
 select id, Annual_Premium, rank()
 over(order by Annual_Premium desc) premium_rank
from insurance_customers;

-- 15. Customer Groups --
select id, 'Interested' as category
from insurance_customers
where Response = 1
union
select id, 'Not Interested' as category
from insurance_customers
where Response = 0;

-- 16. Number of Responses --
select sum(response)
from insurance_customers;



