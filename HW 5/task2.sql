-- 1

SELECT SUM(bill_total) AS "Income" 
FROM restBill;

-- 2

SELECT SUM(bill_total) AS "Feb Income" 
FROM restBill
WHERE bill_date LIKE '1602%';

-- 3

SELECT AVG(bill_total) AS "Feb Income"
FROM restBill
WHERE bill_date LIKE '1602%';

-- 4

SELECT MIN(no_of_seats)AS Min,MAX(no_of_seats)AS Max,Avg(no_of_seats)AS Avg
FROM restRest_table
where room_name='Blue';

-- 5

SELECT COUNT(DISTINCT table_no)
FROM restBill
WHERE waiter_no IN('002','004');