# SQL Joins

## Part 1

* Describe the different types of join clauses supported in SQL.

ANSWER: 

   SQL Has 4 different types of joins

        (Assuming 2 tables, table A an table B)
    1. The Inner Join which produces the results of the common elements in two tables
    2. The left Join which returns all elements of the first table (table a) and any matching elements from the second table based on the referenced key
    3. The right Join which returns all the elements of the second table (table b) and any matching elements from the first table based on the referenced key
    4. The full outer join or full monty as I like to call it which joins both tables with no requirement for  a matching key between the two tables
    




## Part 2

* Consider the following tables:

  * vendor_table
  ![vendor_table.png](Images/vendor_table.png)

  * yarn_table
  ![yarn_table.png](Images/yarn_table.png)

* Which join was used to create the final view below?

  ![table_join.png](Images/table_join.png)

* _You can use pgAdmin and create a new table to test out this activity_
