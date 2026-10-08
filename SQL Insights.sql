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


#select Statemnt
select * from cleaned_healthcare;

#Patient By Insurance Provider
select `Insurance Provider` , count(*) as Total_Patient
from cleaned_healthcare
group by `Insurance Provider`
order by Total_Patient desc;


#Revenue By Insurance Provider
select `Insurance Provider` , round(sum(`Billing Amount`),2) as Revenue
from cleaned_healthcare
group by `Insurance Provider`
order by Revenue desc;

#Prescribed Medication

select Medication , count(*) as Prescribed_people
from cleaned_healthcare
group by Medication
order by Prescribed_people desc;

#Patients As per Test Results
select `Test Results`, count(*) as Patients
from cleaned_healthcare
group by `Test Results`
order by Patients desc;

select * from cleaned_healthcare; 

#Admissions Trends Over time
select
year(`Date of Admission`) as Year,
month(`Date of Admission`) as month,
count(*) as admissions
from cleaned_healthcare
group by year(`Date of Admission`),month(`Date of Admission`)
order by year,month;

#average length of stay 

select round(avg(`Staying Length`),2) as Avg_Staying_Length
from cleaned_healthcare;


#Average Stay As Per Medical Condition
select * from cleaned_healthcare;

select `Medical Condition` , round(avg(`Staying Length`)) as Average_Stay
from cleaned_healthcare
group by `Medical Condition`
order by Average_Stay desc;

# Highest Billed Patients
select 
`Name`, Age, Gender, `Blood Type`,`Medical Condition`,Hospital,`Billing Amount`
from cleaned_healthcare
order by `Billing Amount` desc
Limit 20;











































































