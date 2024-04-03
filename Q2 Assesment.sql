CREATE TABLE table_1 (
ID Varchar(8)
);


INSERT INTO Table_1 (Id) VALUES ('');
INSERT INTO Table_1 (Id) VALUES ('');
INSERT INTO Table_1 (Id) VALUES ('1');
INSERT INTO Table_1 (Id) VALUES ('2');
INSERT INTO Table_1 (Id) VALUES ('2');
INSERT INTO Table_1 (Id) VALUES ('4');
INSERT INTO Table_1 (Id) VALUES ('null');
INSERT INTO Table_1 (Id) VALUES ('null');
INSERT INTO Table_1 (Id) VALUES ('null');


CREATE TABLE table_2 (
ID Varchar(8)
);


INSERT INTO Table_2 (Id) VALUES ('');
INSERT INTO Table_2 (Id) VALUES ('');
INSERT INTO Table_2 (Id) VALUES ('');
INSERT INTO Table_2 (Id) VALUES ('');
INSERT INTO Table_2 (Id) VALUES ('1');
INSERT INTO Table_2 (Id) VALUES ('1');
INSERT INTO Table_2 (Id) VALUES ('2');
INSERT INTO Table_2 (Id) VALUES ('2');
INSERT INTO Table_2 (Id) VALUES ('3');
INSERT INTO Table_2 (Id) VALUES ('3');
INSERT INTO Table_2 (Id) VALUES ('null');
INSERT INTO Table_2 (Id) VALUES ('null');

SELECT COUNT(*) FROM Table_1 INNER JOIN Table_2 ON Table_1.id = Table_2.id; 
SELECT COUNT(*) FROM Table_1 LEFT JOIN Table_2 ON Table_1.id = Table_2.id; 
SELECT COUNT(*) FROM Table_1 RIGHT JOIN Table_2 ON Table_1.id = Table_2.id; 
SELECT COUNT(*) FROM Table_1 LEFT JOIN Table_2 ON Table_1.id = Table_2.id WHERE Table_2.id IS NULL; 








