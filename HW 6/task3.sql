-- 1
SELECT first_name,surname
FROM restBill rB
JOIN restStaff rs
ON rs.staff_no=rb.waiter_no
WHERE cust_name='Tanya Singh';

-- 2
SELECT room_date
FROM restRoom_management rm
JOIN restStaff s 
ON rm.headwaiter = s.staff_no
WHERE first_name = 'Charles' 
AND room_name = 'Green'
AND room_date>= '160201'
AND room_date<= '160229';

-- 3
SELECT first_name, surname
FROM restStaff
WHERE headwaiter = (
SELECT headwaiter 
FROM restStaff 
WHERE first_name = 'Zoe' 
AND surname = 'Ball'
)
AND NOT (first_name = 'Zoe' AND surname = 'Ball');
 
 
-- 4
SELECT cust_name, bill_total, first_name, surname
FROM restBill b
JOIN restStaff s 
ON b.waiter_no = s.staff_no
ORDER BY bill_total DESC;

-- 5
SELECT DISTINCT first_name, surname
FROM restStaff s
JOIN restBill b 
ON s.staff_no = b.waiter_no
WHERE table_no IN (
SELECT DISTINCT table_no
FROM restBill 
WHERE bill_no IN (14, 17)
);

-- 6
SELECT DISTINCT first_name, surname
FROM restStaff s
WHERE staff_no IN (
SELECT DISTINCT waiter_no
FROM restBill b
JOIN restRest_table t 
ON b.table_no = t.table_no
WHERE room_name = 'Blue' 
AND bill_date = 160312
);

