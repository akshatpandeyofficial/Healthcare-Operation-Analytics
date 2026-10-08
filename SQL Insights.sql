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

#Total Number of Patient As Per Medical Condition 
select `Medical Condition`,count(*) as Total_Patients 
from cleaned_healthcare
group by `Medical Condition`
order by Total_patients;

#Average Billing Amount as per Medical Condition
SELECT `Medical Condition`,round(AVG(`Billing Amount`),2) AS Avg_Amount
FROM cleaned_healthcare
GROUP BY `Medical Condition`
ORDER BY Avg_Amount;

#Average Billing as Per Hospital
select hospital , round(sum(`Billing amount`),2) as total_billing
from cleaned_healthcare
group by hospital
order by total_billing desc;


# Hospital Having Most Number of Patients 
select hospital, count(*) as Total_patient
from cleaned_healthcare
group by hospital
order by Total_patient desc;


#Average Billing by Admission Type 
select `Admission Type`, round(avg(`Billing Amount`)) as Avg_billing
from cleaned_healthcare
group by `Admission Type`
order by Avg_billing desc;





















































































