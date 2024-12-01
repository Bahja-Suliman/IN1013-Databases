-- 1
SELECT first_name, surname, bill_date, COUNT(bill_no) AS number_of_bills_taken
FROM restBill b
JOIN restStaff s 
ON b.waiter_no = s.staff_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(bill_no) >= 2;

-- 2
SELECT room_name, COUNT(table_no) AS number_of_tables
FROM restRest_table 
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3
SELECT room_name, SUM(bill_total) AS total_bill_amount
FROM restBill b
JOIN restRest_table t 
ON b.table_no = t.table_no
GROUP BY room_name;

-- 4
SELECT hw.first_name, hw.surname, SUM(bill_total) AS total_bill_amount
FROM restBill b
JOIN restStaff w 
ON b.waiter_no = w.staff_no
JOIN restStaff hw 
ON w.headwaiter = hw.staff_no
GROUP BY hw.first_name, hw.surname
ORDER BY total_bill_amount DESC;
 
-- 5
SELECT cust_name, AVG(bill_total) AS average_spend
FROM restBill 
GROUP BY cust_name
HAVING AVG(bill_total) > 400.00;

-- 6
SELECT first_name, surname, bill_date, COUNT(bill_no) AS number_of_bills_taken 
FROM restBill b
JOIN restStaff s 
ON b.waiter_no = s.staff_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(bill_no) >= 3;
