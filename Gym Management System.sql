CREATE DATABASE GYM ;
USE GYM;
CREATE TABLE Members (
member_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    join_date DATE,
    emergency_contact VARCHAR(20)
    );
INSERT INTO Members
(full_name, gender, dob, phone, email, address, join_date, emergency_contact)
VALUES
('Arun Kumar', 'Male', '2001-05-10', '9876543210', 'arun@gmail.com', 'Chennai', '2026-01-10', '9123456780'),
('Priya Sharma', 'Female', '2000-08-15', '9876501234', 'priya@gmail.com', 'Bangalore', '2026-02-12', '9000011111'),
('Vikram Singh', 'Male', '1999-03-20', '9988776655', 'vikram@gmail.com', 'Hyderabad', '2026-03-05', '9887766554'),
('Sneha Reddy', 'Female', '2002-11-25', '9090909090', 'sneha@gmail.com', 'Chennai', '2026-03-15', '9012345678'),
('Karthik Raj', 'Male', '2001-07-18', '8080808080', 'karthik@gmail.com', 'Coimbatore', '2026-04-01', '9871234567'),
('Aishwarya Devi', 'Female', '2000-09-12', '9786543210', 'aishwarya@gmail.com', 'Madurai', '2026-04-10', '9876541230'),
('Rohit Kumar', 'Male', '1998-12-05', '9871234560', 'rohit@gmail.com', 'Trichy', '2026-04-15', '9123456789'),
('Meena Lakshmi', 'Female', '2001-06-25', '9098765432', 'meena@gmail.com', 'Salem', '2026-05-01', '9988771122'),
('Ajay Prakash', 'Male', '1999-10-18', '9087654321', 'ajay@gmail.com', 'Erode', '2026-05-05', '9876509876'),
('Divya Shree', 'Female', '2002-03-30', '9012345678', 'divya@gmail.com', 'Tirunelveli', '2026-05-10', '9001122334');
SELECT * FROM MEMBERS ;
CREATE TABLE Membership_Plans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(50),
    duration_months INT,
    price DECIMAL(10,2),
    facilities VARCHAR(255)
);
INSERT INTO Membership_Plans
(plan_name, duration_months, price, facilities)
VALUES
('Basic Plan', 1, 1500, 'Gym Access'),
('Standard Plan', 3, 4000, 'Gym + Cardio'),
('Premium Plan', 6, 7500, 'Gym + Cardio + Yoga'),
('Elite Plan', 12, 14000, 'All Facilities'),
('Weight Loss Plan', 2, 3000, 'Cardio + Diet Support'),
('Student Plan', 1, 1200, 'Gym Access + Locker'),
('Family Plan', 6, 8500, 'Gym + Cardio + Family Access'),
('Senior Citizen Plan', 3, 2500, 'Light Workout + Yoga'),
('Athlete Plan', 12, 18000, 'All Facilities + Personal Trainer'),
('Transformation Plan', 6, 10000, 'Gym + Diet Plan + Cardio + Yoga');
SELECT * FROM Membership_Plans;
CREATE TABLE Member_Subscriptions (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    plan_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (plan_id) REFERENCES Membership_Plans(plan_id)
);
INSERT INTO Member_Subscriptions
(member_id, plan_id, start_date, end_date, status)
VALUES
(1, 1, '2026-01-10', '2026-02-10', 'Expired'),
(2, 3, '2026-02-12', '2026-08-12', 'Active'),
(3, 2, '2026-03-05', '2026-06-05', 'Active'),
(4, 5, '2026-03-15', '2026-05-15', 'Expired'),
(5, 4, '2026-04-01', '2027-04-01', 'Active'),
(6, 2, '2026-04-10', '2026-07-10', 'Active'),
(7, 1, '2026-04-15', '2026-05-15', 'Expired'),
(8, 3, '2026-05-01', '2026-11-01', 'Active'),
(9, 5, '2026-05-05', '2026-07-05', 'Active'),
(10, 4, '2026-05-10', '2027-05-10', 'Active');
select * from Member_Subscriptions;
CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    trainer_name VARCHAR(100),
    specialization VARCHAR(100),
    experience_years INT,
    phone VARCHAR(15),
    salary DECIMAL(10,2)
);
INSERT INTO Trainers
(trainer_name, specialization, experience_years, phone, salary)
VALUES
('Rahul Verma', 'Weight Training', 5, '9876541111', 45000),
('Anjali Mehta', 'Yoga', 4, '9876542222', 40000),
('Suresh Kumar', 'Cardio Fitness', 6, '9876543333', 50000),
('Deepak Sharma', 'CrossFit', 3, '9876544444', 35000),
('Pooja Singh', 'Nutrition & Fitness', 7, '9876545555', 55000),
('Manoj Kumar', 'Body Building', 5, '9876546666', 45000),
('Keerthana Ravi', 'Aerobics', 4, '9876547777', 42000),
('Arvind Raj', 'Strength Training', 6, '9876548888', 52000),
('Nisha Patel', 'Zumba', 3, '9876549999', 38000),
('Vignesh Kumar', 'Personal Fitness', 8, '9876511111', 60000);
select * from Trainers;
CREATE TABLE Member_Trainers (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    trainer_id INT,
    assigned_date DATE,

    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);
INSERT INTO Member_Trainers
(member_id, trainer_id, assigned_date)
VALUES
(1, 1, '2026-01-11'),
(2, 2, '2026-02-13'),
(3, 3, '2026-03-06'),
(4, 5, '2026-03-16'),
(5, 1, '2026-04-02'),
(6, 6, '2026-04-11'),
(7, 7, '2026-04-16'),
(8, 8, '2026-05-02'),
(9, 9, '2026-05-06'),
(10, 10, '2026-05-11');
select * from  Member_Trainers;
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    attendance_date DATE,
    check_in TIME,
    check_out TIME,

    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
INSERT INTO Attendance
(member_id, attendance_date, check_in, check_out)
VALUES
(1, '2026-05-01', '06:00:00', '07:30:00'),
(2, '2026-05-01', '07:00:00', '08:15:00'),
(3, '2026-05-01', '08:00:00', '09:00:00'),
(2, '2026-05-02', '07:10:00', '08:20:00'),
(5, '2026-05-02', '06:30:00', '07:45:00'),
(6, '2026-05-03', '06:15:00', '07:20:00'),
(7, '2026-05-03', '07:00:00', '08:00:00'),
(8, '2026-05-04', '06:45:00', '08:00:00'),
(9, '2026-05-04', '08:00:00', '09:10:00'),
(10, '2026-05-05', '06:30:00', '07:40:00');
select * from Attendance;
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),

    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
INSERT INTO Payments
(member_id, amount, payment_date, payment_method, payment_status)
VALUES
(1, 1500, '2026-01-10', 'UPI', 'Paid'),
(2, 7500, '2026-02-12', 'Credit Card', 'Paid'),
(3, 4000, '2026-03-05', 'Cash', 'Paid'),
(4, 3000, '2026-03-15', 'UPI', 'Pending'),
(5, 14000, '2026-04-01', 'Debit Card', 'Paid'),
(6, 4000, '2026-04-10', 'UPI', 'Paid'),
(7, 1500, '2026-04-15', 'Cash', 'Paid'),
(8, 7500, '2026-05-01', 'Credit Card', 'Paid'),
(9, 3000, '2026-05-05', 'Debit Card', 'Pending'),
(10, 14000, '2026-05-10', 'UPI', 'Paid');
select * from Payments;
CREATE TABLE Workout_Plans (
    workout_id INT PRIMARY KEY AUTO_INCREMENT,
    workout_name VARCHAR(100),
    difficulty_level VARCHAR(20),
    duration_minutes INT,
    calories_burn_estimate INT
);
INSERT INTO Workout_Plans
(workout_name, difficulty_level, duration_minutes, calories_burn_estimate)
VALUES
('Beginner Strength', 'Easy', 45, 250),
('Advanced Cardio', 'Hard', 60, 500),
('Yoga Flexibility', 'Medium', 40, 200),
('HIIT Blast', 'Hard', 30, 450),
('Muscle Gain Program', 'Medium', 75, 600),
('Fat Burn Workout', 'Medium', 50, 400),
('Power Lifting', 'Hard', 90, 700),
('Core Strength', 'Easy', 35, 220),
('Endurance Training', 'Medium', 60, 450),
('Full Body Workout', 'Hard', 80, 650);
select * from Workout_Plans;
CREATE TABLE Member_Workouts (
    member_workout_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    workout_id INT,
    assigned_date DATE,

    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (workout_id) REFERENCES Workout_Plans(workout_id)
);
INSERT INTO Member_Workouts
(member_id, workout_id, assigned_date)
VALUES
(1, 1, '2026-01-12'),
(2, 3, '2026-02-14'),
(3, 2, '2026-03-07'),
(4, 4, '2026-03-17'),
(5, 5, '2026-04-03'),
(6, 6, '2026-04-12'),
(7, 7, '2026-04-17'),
(8, 8, '2026-05-03'),
(9, 9, '2026-05-07'),
(10, 10, '2026-05-12');
select * from Member_Workouts;
CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    trainer_id INT,
    rating INT,
    comments VARCHAR(255),
    feedback_date DATE,

    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);
INSERT INTO Feedback
(member_id, trainer_id, rating, comments, feedback_date)
VALUES
(1, 1, 5, 'Excellent training support', '2026-05-01'),
(2, 2, 4, 'Very motivating trainer', '2026-05-02'),
(3, 3, 5, 'Helped improve stamina', '2026-05-03'),
(4, 5, 4, 'Good nutrition advice', '2026-05-04'),
(5, 1, 5, 'Best workout sessions', '2026-05-05'),
(6, 6, 5, 'Excellent guidance', '2026-05-06'),
(7, 7, 4, 'Very friendly trainer', '2026-05-07'),
(8, 8, 5, 'Great workout plan', '2026-05-08'),
(9, 9, 4, 'Good support and motivation', '2026-05-09'),
(10, 10, 5, 'Outstanding training sessions', '2026-05-10');
select * from Feedback;

SELECT * FROM Members;
SELECT * FROM Trainers;
SELECT * FROM Membership_Plans;
SELECT * FROM Payments;
SELECT full_name, phone FROM Members;
SELECT * FROM Members
WHERE address='Chennai';
SELECT * FROM Member_Subscriptions
WHERE status='Active';
SELECT * FROM Members
WHERE full_name LIKE 'A%';
SELECT * FROM Members
WHERE full_name LIKE '%a';
SELECT * FROM Trainers
ORDER BY salary DESC;
SELECT * FROM Members
LIMIT 5;
SELECT * FROM Members
LIMIT 5 OFFSET 5;
SELECT COUNT(*) FROM Members;
SELECT MAX(salary) FROM Trainers;
SELECT MIN(salary) FROM Trainers;

SELECT SUM(amount) AS Total_Revenue
FROM Payments
WHERE payment_status='Paid';
SELECT AVG(amount)
FROM Payments;
SELECT status, COUNT(*)
FROM Member_Subscriptions
GROUP BY status;
SELECT status, COUNT(*)
FROM Member_Subscriptions
GROUP BY status;
SELECT payment_status, SUM(amount)
FROM Payments
GROUP BY payment_status;
SELECT payment_status, SUM(amount)
FROM Payments
GROUP BY payment_status
HAVING SUM(amount)>5000;
SELECT m.full_name,p.plan_name,py.amount
FROM Members m
INNER JOIN Member_Subscriptions ms
ON m.member_id=ms.member_id
INNER JOIN Membership_Plans p
ON ms.plan_id=p.plan_id
INNER JOIN Payments py
ON m.member_id=py.member_id;
SELECT m.full_name, mt.assignment_id
FROM Members m
LEFT JOIN Member_Trainers mt
ON m.member_id=mt.member_id;
SELECT m.full_name, py.payment_id
FROM Members m
RIGHT JOIN Payments py
ON m.member_id=py.member_id;
SELECT m.full_name,t.trainer_name
FROM Members m
CROSS JOIN Trainers t;
SELECT *
FROM Trainers
WHERE salary=
(SELECT MAX(salary) FROM Trainers);
SELECT *
FROM Members
WHERE member_id IN
(SELECT member_id
FROM Payments
WHERE payment_status='Paid');
SELECT trainer_name,
(SELECT AVG(salary) FROM Trainers) AS AvgSalary
FROM Trainers;
CREATE VIEW Member_Report AS
SELECT m.full_name,
       p.plan_name,
       py.amount
FROM Members m
JOIN Member_Subscriptions ms
ON m.member_id=ms.member_id
JOIN Membership_Plans p
ON ms.plan_id=p.plan_id
JOIN Payments py
ON m.member_id=py.member_id;
SELECT * FROM Member_Report;
SELECT *
FROM Payments
WHERE payment_status='Paid';
SELECT SUM(amount)
FROM Payments
WHERE payment_status='Paid';

DELIMITER //

CREATE TRIGGER PreventDuplicateSubscription
BEFORE INSERT ON Member_Subscriptions
FOR EACH ROW
BEGIN
   DECLARE cnt INT;

   SELECT COUNT(*)
   INTO cnt
   FROM Member_Subscriptions
   WHERE member_id=NEW.member_id
   AND status='Active';

   IF cnt>0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Member Already Has Active Subscription';
   END IF;
END //

DELIMITER ;
INSERT INTO Member_Subscriptions
(member_id,plan_id,start_date,end_date,status)
VALUES
(2,1,'2026-06-01','2026-07-01','Active');
DELIMITER //

CREATE PROCEDURE TotalRevenue()
BEGIN
   SELECT SUM(amount) AS Revenue
   FROM Payments
   WHERE payment_status='Paid';
END //

DELIMITER ;

CALL TotalRevenue();
DELIMITER //

CREATE PROCEDURE CheckAttendance
(IN p_memberID INT)
BEGIN
   SELECT *
   FROM Attendance
   WHERE member_id=p_memberID;
END //

DELIMITER ;
CALL CheckAttendance(1);
SELECT trainer_name,
salary,
RANK() OVER(ORDER BY salary DESC) AS Salary_Rank
FROM Trainers;
SELECT member_id,
full_name,
ROW_NUMBER() OVER(ORDER BY member_id) AS Row_Num
FROM Members;
SELECT payment_id,
amount,
DENSE_RANK() OVER(ORDER BY amount DESC) AS Payment_Rank
FROM Payments;
START TRANSACTION;
UPDATE Payments
SET amount=5000
WHERE payment_id=1;
SAVEPOINT P1;
ROLLBACK TO P1;
COMMIT;
CREATE USER 'gymuser'@'localhost'
IDENTIFIED BY 'gym123';
GRANT SELECT
ON GYM.*
TO 'gymuser'@'localhost';
REVOKE INSERT
ON GYM.*
FROM 'gymuser'@'localhost';