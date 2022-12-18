CREATE TABLE sales_table(
   s_date TEXT,
   ordernumber TEXT,
   c_id INT,
   c_name TEXT,
   productcode INT, 
   productname TEXT,
   quantity INT,
   price INT);
   
   INSERT INTO customer_table
   VALUES(1111,'Nisha','kerala',8392320),
         (1212,'Oliver','kerala',4353891),
         (1216,'Nila','delhi',3323242);
         
	ALTER TABLE sales_table
    ADD S_no INT,
    ADD categories TEXT;
    
    ALTER TABLE product_table
    MODIFY stock VARCHAR(255);
    
    ALTER TABLE customer_table
    RENAME TO customer_details_table;
    
    ALTER TABLE sales_table
    DROP S_no,
    DROP categories;
    
    SELECT * FROM sales_table;
    
    SELECT * FROM product_table WHERE category='Stationary';
    
    SELECT DISTINCT category FROM product_table;
    
    SELECT * FROM sales_table WHERE qty>2 AND price<500;
    
    SELECT c_name FROM customer_details_table WHERE c_name LIKE '%a';
    
    SELECT * FROM product_table ORDER BY price DESC;
    
    SELECT p_code, category
    FROM product_table
    WHERE category IN(SELECT category FROM product_table GROUP BY category HAVING COUNT(*)>=2);
    