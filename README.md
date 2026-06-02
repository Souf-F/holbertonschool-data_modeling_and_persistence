# SQL Learning Modules -

## Overview

This document summarizes the SQL concepts learned across two modules: **SQL-CRUD Operations** and **SQL JOINs**.

---

## Module 1: SQL-CRUD Operations

### CREATE TABLE
- Define table structure with columns and data types
- Set constraints: PRIMARY KEY (unique identifier), NOT NULL (mandatory fields)
- Establish data types: INTEGER, TEXT, REAL, DATE
- Primary keys automatically ensure row uniqueness

### INSERT
- Add new rows to a table
- Insert single or multiple rows in one statement
- Must provide values matching column data types
- Text values require quotes; numbers do not

### SELECT
- Retrieve data from tables
- SELECT specific columns or all columns (*)
- Return exact columns needed, not unnecessary data
- Results are read-only (no data modification)

### WHERE Clause
- Filter rows based on conditions
- Use comparison operators: =, <, >, <=, >=, !=
- Combine conditions with AND (both must be true) or OR (at least one true)
- Rows matching the condition are returned; others are excluded

### UPDATE
- Modify existing row values
- Must include WHERE clause to specify which rows to update
- Without WHERE, ALL rows are updated (dangerous)
- Use arithmetic operations for calculations (e.g., stock = stock + 5)

### DELETE
- Remove entire rows from a table
- Must include WHERE clause to specify which rows to delete
- Without WHERE, ALL rows are deleted (critical danger)
- Deleted rows cannot be recovered; always verify conditions first

### ORDER BY
- Sort results by one or more columns
- ASC (ascending, default) for lowest to highest
- DESC (descending) for highest to lowest
- Applied after filtering

### LIMIT
- Restrict the number of rows returned
- Combined with ORDER BY to find top/bottom results
- Applied after sorting

### Aggregate Functions
- COUNT(*): counts total rows
- SUM(column): adds numeric values
- AVG(column): calculates average
- MIN(column): finds smallest value
- MAX(column): finds largest value
- Aggregate one or many rows into a single summary

### GROUP BY
- Group rows by column value
- Used with aggregate functions to calculate per-group summaries
- Returns one row per unique group
- All non-aggregated columns in SELECT must be in GROUP BY

### Key Lessons
- ALWAYS use WHERE in UPDATE and DELETE to avoid accidents
- Column order matters when inserting values
- Numeric values don't need quotes; text values do
- Plan queries before executing destructive operations

---

## Module 2: SQL JOINs

### INNER JOIN
- Combines rows from two tables where a condition matches
- Only returns rows that exist in BOTH tables
- Non-matching rows are excluded
- Used when you need related data from multiple tables

### LEFT JOIN
- Returns all rows from the left table
- Includes matching rows from the right table
- Non-matching right rows show NULL values
- Used when you want all left records regardless of right matches

### RIGHT JOIN
- Returns all rows from the right table
- Includes matching rows from the left table
- Non-matching left rows show NULL values
- Opposite direction of LEFT JOIN

### FULL OUTER JOIN
- Returns all rows from both tables
- Matches where conditions are met
- Unmatched rows show NULL on missing side
- Shows the complete picture of both tables

### Join Syntax
- ON clause specifies the join condition (usually matching foreign keys)
- Can join on any column, not just primary/foreign keys
- Multiple conditions can be combined with AND/OR
- Join happens before WHERE filtering

### Multiple JOINs
- Chain multiple joins to connect 3+ tables
- Each join adds another related table
- Order matters for readability and performance
- Follow relationships through foreign keys

### Key Lessons
- INNER JOIN = intersection (only matches)
- LEFT JOIN = left table complete + right matches
- Choose join type based on which unmatched rows you need
- Foreign keys define the natural join relationships
- Join condition is different from WHERE filtering

---

## Core SQL Principles

### Data Integrity
- Use PRIMARY KEY to ensure no duplicate rows
- Use NOT NULL to enforce mandatory data
- Use FOREIGN KEY to maintain relationships (learned in joins)

### Normalization
- Separate different entities into different tables
- Avoid repeating data across rows
- Use JOINs to combine data when needed

### Query Efficiency
- Select only necessary columns, not *
- Filter with WHERE before grouping
- Use indexes on frequently filtered columns (advanced)

### Safety
- Always specify WHERE conditions in UPDATE/DELETE
- Test SELECT version of destructive queries first
- Understand the difference between modifying and deleting

---

## Summary

You have learned:
- ✅ How to structure data with CREATE TABLE
- ✅ How to add, read, modify, and delete data (CRUD)
- ✅ How to filter, sort, and aggregate data
- ✅ How to combine data from multiple tables with JOINs
- ✅ The importance of data organization and relationships
- ✅ Best practices for database design and query safety

These skills form the foundation for working with relational databases in production environments.