# Course: Database Development with PL/SQL (INSY 8311)

## Module: GOTO Statements, Control Flow & Stored Functions

### name: Yannick Credo Musemakweli

#### Date: October 8 2026
## 1. Technical Insights and Core Learnings

My learning process during the assignment was to understand control flow structures in Oracle PL/SQL programming. It was nice to see how the flow control statements worked in practice. However, the real value of this practical task was in finding and debugging various database errors that occurred during the execution of the program and the compilation process.

### A. The Reality of Control Flow: Rethinking `GOTO`

The `GOTO` statement is a simple statement used for implementing unconditional transfer of control within a block. The experience of using such an operator in practice demonstrated several important aspects that should be considered when working with Oracle PL/SQL.

Scope restrictions (`PLS-00375`): A `GOTO` statement cannot jump back to a point in PL/SQL code that is outside the current scope. For example, one cannot jump out of an `IF` statement into an `ELSIF` clause or into a loop body. Such code constructs lead to Oracle raising a compilation error since they would violate the declaration section’s rules for implementing logic and decision-making;

. Flow simplicity (IF-ELSIF-ELSE): After replacing the `GOTO` statements with `IF-ELSIF-ELSE`, I discovered how simple decision-making logic could be implemented using this fundamental flow control structure. In terms of performance, this approach was no different from using `GOTO` statements. However, the code readability has significantly improved.


### B. Modular Database Architecture in Stored Functions

This assignment also gave me a great insight into the concepts of developing database programs using functions. In particular, the practical experience deepened my understanding of how database applications can be designed in a modular way.

Graceful exception handling: In practice, exceptional conditions such as invalid input data or referential integrity constraints violations occur. For example, the `fn_dept_name` function demonstrates how a function can be written to handle cases when no data is found (`NO_DATA_FOUND`). Instead of failing catastrophically, the application logic gracefully exits the routine, returning a message indicating an error.

SQL engine integration: One of the critical aspects of function implementation is defining the routines as deterministic when appropriate. In this case, the function can be safely included in SQL queries as part of the query processing. This approach allows, for instance, calculating marginal tax liabilities directly in the `SELECT` clause.



Compilation order and schema anchor dependency: When trying to use `%TYPE`, I got an error (`PLS-00201`), which forced me to analyze the dependencies between database schemas. In particular, I discovered that in order for Oracle to correctly compile the function, the tables used in it must already exist in the database. This aspect has significant implications for the overall organization of the code writing process.



## 2. Practical Troubleshooting and Debugging Reflection



Debugging database code in SQL Developer involved several critical insights that furthered my understanding of the practical aspects of working with Oracle databases.

1. PL/SQL block execution vs. standard DDL:



I used `EXECUTE IMMEDIATE` blocks to perform destructive operations such as dropping tables. Although visually executing such commands in SQL Developer always showed successful execution (“PL/SQL procedure successfully completed”), in reality, I saw that these commands did not work correctly. It was necessary to double-check such operations using additional `SELECT` queries or standalone `DROP TABLE` statements.


2. Partial script selection errors (`ORA-00942`):

I discovered that selecting only the necessary part of the script for execution could lead to error `ORA-00942` “table does not exist” if I tried to read or write to a table that had not been created yet.

## 3. Human & AI Collaboration Disclosure

During the assignment, I actively used various artificial intelligence technologies, primarily Gemini, to achieve the desired results. However, I have always adhered to the highest standards of academic integrity and ethical AI use, ensuring that my collaboration with the technology has been transparent and beneficial for both parties.

Human verification and ownership: All code lines, both SQL and PL/SQL, were written by me. I performed all tests in Oracle SQL Developer, verifying the correctness of the results using `DBMS_OUTPUT`. In addition, queries to actual tables were made to verify that the expected results were indeed achieved. Any screenshots used in the assignment were made after verifying the final results.

## 4. Conclusion

This assignment allowed me to transition from theoretical learning of Oracle PL/SQL basics to a higher level of understanding and applying this knowledge to solve more complex database-related tasks and problems.

The practical experience that I have gained is invaluable and has allowed me to see the big picture of how database applications are developed and supported. More specifically, I have learned that proper use of the fundamental concepts of flow control and modular programming through functions is critical to write high-quality, easily maintained code.

Furthermore, the assignment has once again demonstrated to me the importance of debugging as a fundamental part of the programming process. Debugging is an iterative and often time-consuming process that, however, ultimately leads to a better understanding of the underlying issue and its efficient solution.