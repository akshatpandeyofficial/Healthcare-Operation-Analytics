select * from cleaned_healthcare;


#Total Number of Patients 
select count(*) as Total_patients 
from cleaned_healthcare;


#Average Age Of Patients 
select round(avg(Age),2) as Avg_Age
from cleaned_healthcare;

#Patient As per Gender
select Gender, count(*) as patient_count
from cleaned_healthcare
group by Gender
order by patient_count Desc;






























































































