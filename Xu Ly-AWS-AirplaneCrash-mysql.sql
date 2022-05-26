/*
#Chuyển Date từ dạng M-D-Y sang Y-M-D
select str_to_date(Date, '%m/%d/%Y') from Airplane3;
update  Airplane3 set Date = str_to_date(Date,'%m/%d/%Y'); 
#Chuyển kiểu dữ liệu
ALTER TABLE Airplane3 MODIFY Date date;
*/
select year(Date) from airplanecrash.Airplane3;

select  s.Operator, max(s.Die) from (
SELECT Operator, (sum(Fatalities)+sum(Ground)) as Die
FROM Airplanedata 
where Operator!= '' 
group by Operator) as s group by Die;

SELECT * FROM 
  (SELECT Operator,(sum(Fatalities)+sum(Ground)) AS Die FROM Airplanedata GROUP BY Operator) a
GROUP BY a.Die,a.Operator;

SELECT Fatalities,Ground  FROM Airplanedata where Operator= 'Military - U.S. Air Force' 

SELECT * FROM 
  (SELECT Operator, Type, (count(Type)) AS SLType FROM Airplanedata where Operator!= '' GROUP BY Operator,Type) a
GROUP BY a.SLType,a.Operator,a.Type;

SELECT * FROM 
  (SELECT Type, (count(Type)) AS SLType FROM Airplanedata where Operator!= '' GROUP BY Type) a
GROUP BY a.SLType,a.Type;


select Operator from Airplane3 where Operator='Air France'

select count(*) from Airplane3

