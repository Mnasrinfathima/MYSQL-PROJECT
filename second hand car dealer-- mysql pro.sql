create schema cars;
use cars;
-- READ DATA--
select*from car_dealer;

-- TOTAL CARS:TO GET A COUNT OF TOTAL RECORDS--

select count(*) from car_dealer; #1000

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023 and 2016--

select count(*) from car_dealer where year = 2023; #0

select count(*) from car_dealer where year = 2016;#349

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS IS AVAILABLE IN 2020,2015--

select count(*) from car_dealer where year = 2020;#0

select count(*) from car_dealer where year = 2015;#651

-- GROUP BY--
select count(*) from car_dealer where year in (2016,2015) group by year; #349 #651


-- CLIENT ASKED ME TO PRINT THE TOTAL OF ALL CARS BY YEAR, I DON'T SEE ALL THE DETAILS--

select year, count(*) from car_dealer group by year; #2016-349 #2015-651

-- client asked to car dealer agent how many diesel cars will there be in 2015--

select count(*) from car_dealer where year = 2015 and fuel = "diesel" ; #387

-- client requested a car dealer agent how many petrol cars will there be in 2015

select count(*) from car_dealer where year = 2015 and fuel = "petrol" ; #260

-- THE MANAGER TOLD THE EMPLOYEE TO GIVE A PRINT ALL THE FUEL CARS (PETROL, DIESEL, AND CNG)COME BY ALL YEAR--

select year,  count(*) from car_dealer where fuel = "petrol" group by year; #2016-185,2015-260

select year,  count(*) from car_dealer where fuel = "diesel" group by year;#2016-160,2015-387

select year,  count(*) from car_dealer where fuel = "CNG" group by year;#2016-4,2015-2

-- MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR, WHICH YEAR HAD MORE THAN 100 CARS--

select year, count(*) from car_dealer group by year having count(*)>100;#2016 and 2015

select year, count(*) from car_dealer group by year having count(*)<50;#00

-- the manager said to the employee all cars count details between 2015 and 2016; we need a complete list--

select count(*) from car_dealer where year between 2015 and 2016;#1000

-- the manager said to the employee all cars details between 2015 and 2016 we need complete list--

select*from car_dealer where year between 2015 and 2016;#full details shown





