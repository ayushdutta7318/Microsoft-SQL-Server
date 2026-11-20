USE MyDatabase;

/* Create a new table called persons
   with columns: id, person_name, birth_date, and phone */

CREATE TABLE persons (
id INT NOT NULL,
person_name VARCHAR(100) NOT NULL,
birth_date DATE,
phone VARCHAR(14) NOT NULL UNIQUE,
CONSTRAINT pk_persons PRIMARY KEY (id)
)

SELECT * FROM persons;

/*
to create meta data of table-> right click table name -> script table as -> create to -> new query editor window
*/

-- DDL - ALTER command
/*Add a new coln called email to the persons table*/
ALTER TABLE persons 
ADD email VARCHAR(100) NOT NULL UNIQUE;

SELECT * FROM persons;

-- DDL - Remove column - ALTER DROP COLUMN
ALTER TABLE persons
DROP COLUMN phone;

SELECT * FROM persons;

-- DROP TABLE:
DROP TABLE persons;

