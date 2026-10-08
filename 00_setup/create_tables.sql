

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

-- 2. Create Departments Table
CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

-- 3. Create Employees Table (with Foreign Key)
CREATE TABLE employees (
    employee_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(50),
    last_name     VARCHAR2(50),
    salary        NUMBER(10,2),
    hire_date     DATE,
    department_id NUMBER REFERENCES departments(department_id)
);

-- 4. Insert Departments Seed Data
INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'Marketing');
INSERT INTO departments VALUES (30, 'Purchasing');
INSERT INTO departments VALUES (50, 'Shipping');
INSERT INTO departments VALUES (60, 'IT');
INSERT INTO departments VALUES (90, 'Executive');

-- 5. Insert Employees Seed Data
INSERT INTO employees VALUES (100, 'Steven', 'MUGISHA', 25000, TO_DATE('2022-04-17', 'YYYY-MM-DD'), 60);
INSERT INTO employees VALUES (101, 'CEDRICK', 'NZARAMBA', 19000, TO_DATE('2015-03-01', 'YYYY-MM-DD'), 90);
INSERT INTO employees VALUES (102, 'Lex', 'NKOTANYI', 17600, TO_DATE('2008-04-10', 'YYYY-MM-DD'), 60);
INSERT INTO employees VALUES (103, 'Alex', 'MURENZI', 13000, TO_DATE('2015-06-30', 'YYYY-MM-DD'), 90);
INSERT INTO employees VALUES (104, 'Bruce', 'ISHIMWE', 7000, TO_DATE('2019-09-11', 'YYYY-MM-DD'), 90);
INSERT INTO employees VALUES (105, 'David', 'IRAKOZE', 4500, TO_DATE('2010-07-05', 'YYYY-MM-DD'), 60);
INSERT INTO employees VALUES (106, 'VANESSA', 'MUREKATETE', 6800, TO_DATE('2022-02-05', 'YYYY-MM-DD'), 90);

-- 6. Save Changes
COMMIT;