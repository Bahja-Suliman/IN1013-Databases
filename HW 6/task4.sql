-- 1
SELECT cust_name
FROM restBill b
JOIN restStaff w 
ON b.waiter_no = w.staff_no
JOIN restRoom_management rm 
ON w.headwaiter = rm.headwaiter
JOIN restStaff hw 
ON rm.headwaiter = hw.staff_no
WHERE hw.first_name = 'Charles'
AND bill_total > 450.00;

-- 2
SELECT hw.first_name, hw.surname
FROM restBill b
JOIN restStaff w 
ON waiter_no = w.staff_no
JOIN restStaff hw
ON w.headwaiter = hw.staff_no
WHERE cust_name = 'Nerida Smith'
AND bill_date = 160111;

-- 3
SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

-- 4
SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);

-- 5
SELECT cust_name, hw.first_name AS headwaiter_first_name, hw.surname AS headwaiter_surname, t.room_name
FROM restBill b
JOIN restRest_table t 
ON b.table_no = t.table_no
JOIN restStaff w 
ON b.waiter_no = w.staff_no
JOIN restStaff hw 
ON w.headwaiter = hw.staff_no
WHERE bill_total = (SELECT MAX(bill_total) FROM restBill);


