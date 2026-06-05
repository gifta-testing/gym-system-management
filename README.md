# gym-system-management
GYM-MANAGEMENT-SYSTEM

The Gym Management System is a database management project developed using MySQL. It is designed to manage gym members, membership plans, trainers, subscriptions, attendance records, workout plans, payments, and feedback information.

This project demonstrates various SQL concepts including DDL, DML, DQL, Joins, Subqueries, Aggregate Functions, Views, Triggers, Stored Procedures, TCL, and DCL commands.

FEATURES

• Member Management
• Membership Plan Management
• Trainer Management
• Member Subscription Management
• Attendance Tracking
• Workout Plan Management
• Payment Management
• Feedback Management
• Revenue Calculation
• Duplicate Subscription Prevention
• Automated Membership Status Updates

TECHNOLOGIES USED
┌───────────────┬─────────────────────────┐
│ Technology    │ Description             │
├───────────────┼─────────────────────────┤
│ MySQL         │ Database System         │
│ SQL           │ Query Language          │
│ Workbench     │ Query Execution         │
└───────────────┴─────────────────────────┘

DATABASE TABLES
┌──────────────────────┬───────────────────────┐
│ Table Name           │ Description           │
├──────────────────────┼───────────────────────┤
│ Members              │ Member Details        │
│ Membership_Plans     │ Plan Details          │
│ Trainers             │ Trainer Details       │
│ Attendance           │ Attendance Records    │
│ Payments             │ Payment Records       │
└──────────────────────┴───────────────────────┘

ENTITY RELATIONSHIP HIGHLIGHTS

• One Member can have multiple Subscriptions (1:M).
• One Membership Plan can be subscribed to by multiple Members (1:M).
• One Trainer can train multiple Members (1:M).
• One Member can have multiple Attendance Records (1:M).
• One Workout Plan can be assigned to multiple Members (1:M).
• One Member can have multiple Payment Records (1:M).
• One Member can provide multiple Feedback Records (1:M).
• Member_Subscriptions acts as the central entity connecting Members and Membership Plans.
• Primary Keys (PK) uniquely identify records in each table.
• Foreign Keys (FK) maintain relationships and ensure data integrity between tables.

SQL CONCEPTS USED

┌──────────────────────┬───────────────────────────────────────────┐
│ SQL Concept          │ Description                               │
├──────────────────────┼───────────────────────────────────────────┤
│ DDL Commands         │ CREATE, ALTER, DROP                       │
├──────────────────────┼───────────────────────────────────────────┤
│ DML Commands         │ INSERT, UPDATE, DELETE                    │
├──────────────────────┼───────────────────────────────────────────┤
│ DQL Commands         │ SELECT Queries                            │
├──────────────────────┼───────────────────────────────────────────┤
│ Constraints          │ PRIMARY KEY, FOREIGN KEY                  │
├──────────────────────┼───────────────────────────────────────────┤
│ Joins                │ INNER JOIN, LEFT JOIN, RIGHT JOIN,        │
│                      │ CROSS JOIN                                │
├──────────────────────┼───────────────────────────────────────────┤
│ Aggregate Functions  │ COUNT(), SUM(), AVG(), MAX(), MIN()       │
├──────────────────────┼───────────────────────────────────────────┤
│ Group By             │ Grouping records for analysis             │
├──────────────────────┼───────────────────────────────────────────┤
│ Having Clause        │ Filtering grouped data                    │
├──────────────────────┼───────────────────────────────────────────┤
│ Order By             │ Sorting records                           │
├──────────────────────┼───────────────────────────────────────────┤
│ Like Operator        │ Pattern matching searches                 │
├──────────────────────┼───────────────────────────────────────────┤
│ Limit & Offset       │ Pagination and record limiting            │
├──────────────────────┼───────────────────────────────────────────┤
│ Subqueries           │ Single Row, Multi Row, Correlated, Scalar │
├──────────────────────┼───────────────────────────────────────────┤
│ Views                │ Virtual tables for reports                │
├──────────────────────┼───────────────────────────────────────────┤
│ Stored Procedures    │ Reusable SQL programs                     │
├──────────────────────┼───────────────────────────────────────────┤
│ Triggers             │ Automated database actions                │
├──────────────────────┼───────────────────────────────────────────┤
│ Window Functions     │ RANK(), DENSE_RANK(), ROW_NUMBER()        │
├──────────────────────┼───────────────────────────────────────────┤
│ TCL Commands         │ COMMIT, ROLLBACK, SAVEPOINT               │
├──────────────────────┼───────────────────────────────────────────┤
│ DCL Commands         │ GRANT, REVOKE                             │
└──────────────────────┴───────────────────────────────────────────┘

SAMPLE ANALYTICAL QUERIES

1. Highest Paid Trainer

SELECT trainer_name,
salary
FROM Trainers
ORDER BY salary DESC
LIMIT 1;

2. Total Revenue Generated

SELECT SUM(amount) AS Total_Revenue
FROM Payments
WHERE payment_status='Paid';

3. Active Members Count

SELECT COUNT(*) AS Active_Members
FROM Member_Subscriptions
WHERE status='Active';

4. Trainer Wise Average Rating

SELECT t.trainer_name,
AVG(f.rating) AS Average_Rating
FROM Trainers t
JOIN Feedback f
ON t.trainer_id=f.trainer_id
GROUP BY t.trainer_name;

PROJECT OBJECTIVES

• To manage gym operations efficiently.
• To maintain member, trainer, workout, attendance, and payment records.
• To prevent duplicate active subscriptions and automate membership tracking.
• To generate reports and perform business analytics using SQL queries.

LEARNING OUTCOMES

This project helped in improving:
• SQL Query Writing
• Database Design
• Joins and Subqueries
• Triggers and Stored Procedures
• Data Analysis
• Problem Solving
• Relational Database Modeling
• Report Generation

FUTURE ENHANCEMENTS

This project can be enhanced by:
• Online Membership Registration
• Mobile Application Integration
• Automated Diet Plan Recommendations
• SMS and Email Notifications
• Fitness Progress Tracking Dashboard
• Online Trainer Booking System

HOW TO RUN THE PROJECT

1. Open MySQL Workbench.
2. Create the database GYM.
3. Execute the SQL script file (gym_management_system.sql).
4. Verify that all tables are created successfully.
5. Insert the sample data.
6. Run the SQL queries, triggers, and stored procedures.
7. Test the project using sample member, attendance, and payment records.
8. View the generated outputs and reports.

CONCLUSION

The Gym Management System was successfully developed using MySQL to manage members, membership plans, trainers, subscriptions, attendance, workouts, payments, and feedback records. The project demonstrates various SQL concepts including joins, subqueries, aggregate functions, triggers, and stored procedures. Advanced features such as duplicate subscription prevention and membership automation improve the efficiency and reliability of the system. Overall, this project provides practical experience in database design and real-world gym management application development.
