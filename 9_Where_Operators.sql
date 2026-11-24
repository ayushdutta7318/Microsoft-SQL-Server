/*
WHERE operators:

Comparison Operators
= Equal to
<> or != Not equal to
> Greater than
>= Greater than or equal to
< Less than
<= Less than or equal to

Logical Operators
AND
OR
NOT


Range Operator
BETWEEN


Membership Operators
IN
NOT IN


Search Operator
LIKE

*/

USE MyDatabase;
INSERT INTO customers (id, first_name, country, score)
VALUES
(6, 'Aarav', 'India', 785),
(7, 'Aditi', 'India', 920),
(8, 'Amit', 'India', 634),
(9, 'Ananya', 'India', 876),
(10, 'Arjun', 'India', 542),
(11, 'Bhavna', 'India', 968),
(12, 'Deepak', 'India', 711),
(13, 'Diya', 'India', 825),
(14, 'Ishaan', 'India', 603),
(15, 'Kavya', 'India', 949),
(16, 'Liam', 'USA', 750),
(17, 'Emma', 'USA', 891),
(18, 'Noah', 'USA', 467),
(19, 'Olivia', 'USA', 935),
(20, 'James', 'USA', 683),
(21, 'Sophia', 'USA', 809),
(22, 'Mason', 'USA', 574),
(23, 'Isabella', 'USA', 972),
(24, 'Lucas', 'USA', 726),
(25, 'Mia', 'USA', 648),
(26, 'Oliver', 'UK', 886),
(27, 'Amelia', 'UK', 517),
(28, 'George', 'UK', 941),
(29, 'Emily', 'UK', 699),
(30, 'Harry', 'UK', 772),
(31, 'Grace', 'UK', 458),
(32, 'Jack', 'UK', 833),
(33, 'Lily', 'UK', 907),
(34, 'Charlie', 'UK', 621),
(35, 'Ella', 'UK', 754),
(36, 'William', 'Canada', 990),
(37, 'Charlotte', 'Canada', 685),
(38, 'Benjamin', 'Canada', 548),
(39, 'Chloe', 'Canada', 817),
(40, 'Ethan', 'Canada', 934),
(41, 'Zoe', 'Canada', 476),
(42, 'Jacob', 'Canada', 763),
(43, 'Hannah', 'Canada', 889),
(44, 'Logan', 'Canada', 605),
(45, 'Natalie', 'Canada', 852),
(46, 'Thomas', 'Australia', 493),
(47, 'Ruby', 'Australia', 916),
(48, 'Henry', 'Australia', 707),
(49, 'Matilda', 'Australia', 864),
(50, 'Samuel', 'Australia', 535),
(51, 'Evie', 'Australia', 979),
(52, 'Daniel', 'Australia', 674),
(53, 'Sophie', 'Australia', 801),
(54, 'Oscar', 'Australia', 742),
(55, 'Lucy', 'Australia', 588),
(56, 'Felix', 'Germany', 927),
(57, 'Mia', 'Germany', 651),
(58, 'Leon', 'Germany', 482),
(59, 'Lena', 'Germany', 840),
(60, 'Paul', 'Germany', 718),
(61, 'Anna', 'Germany', 963),
(62, 'Jonas', 'Germany', 566),
(63, 'Laura', 'Germany', 794),
(64, 'Max', 'Germany', 871),
(65, 'Julia', 'Germany', 629),
(66, 'Louis', 'France', 455),
(67, 'Camille', 'France', 903),
(68, 'Gabriel', 'France', 739),
(69, 'Emma', 'France', 984),
(70, 'Arthur', 'France', 612),
(71, 'Chloe', 'France', 826),
(72, 'Hugo', 'France', 697),
(73, 'Lea', 'France', 549),
(74, 'Jules', 'France', 948),
(75, 'Manon', 'France', 775),
(76, 'Haruto', 'Japan', 861),
(77, 'Yui', 'Japan', 504),
(78, 'Ren', 'Japan', 922),
(79, 'Aoi', 'Japan', 688),
(80, 'Sota', 'Japan', 743),
(81, 'Hina', 'Japan', 975),
(82, 'Yuto', 'Japan', 597),
(83, 'Sakura', 'Japan', 814),
(84, 'Kaito', 'Japan', 662),
(85, 'Rin', 'Japan', 899),
(86, 'Minjun', 'South Korea', 479),
(87, 'Seo-yeon', 'South Korea', 945),
(88, 'Jiho', 'South Korea', 731),
(89, 'Soo-ah', 'South Korea', 856),
(90, 'Hyunwoo', 'South Korea', 618),
(91, 'Yuna', 'South Korea', 991),
(92, 'Jisoo', 'South Korea', 527),
(93, 'Taeyang', 'South Korea', 783),
(94, 'Eunji', 'South Korea', 909),
(95, 'Donghyun', 'South Korea', 646),
(96, 'Mateo', 'Spain', 438),
(97, 'Lucia', 'Spain', 872),
(98, 'Hugo', 'Spain', 759),
(99, 'Sofia', 'Spain', 936),
(100, 'Pablo', 'Spain', 584),
(101, 'Martina', 'Spain', 821),
(102, 'Diego', 'Spain', 674),
(103, 'Elena', 'Spain', 958),
(104, 'Carlos', 'Spain', 706),
(105, 'Alba', 'Spain', 400);

-- Comparison Operator
SELECT * FROM customers WHERE country = 'India';
SELECT * FROM customers WHERE country != 'Germany';
SELECT * FROM customers WHERE score > 500;
SELECT * FROM customers WHERE score < 500;

-- Logical operators: they used when we have to retrieve data for multiple conditions: AND, OR, NOT
SELECT * FROM customers WHERE country = 'USA' AND score >= 500;
SELECT * FROM customers WHERE country = 'USA' OR score >= 800;
SELECT * FROM customers WHERE NOT score < 500;

-- Range Operator: BETWEEN
SELECT * FROM customers WHERE score BETWEEN 500 AND 700;

-- Membership operator: IN and NOT IN
SELECT * FROM customers WHERE country IN ('India', 'Germany');

-- Search Operator: LIKE: Search for a pattern in a text:
SELECT * FROM customers WHERE first_name LIKE '%ar%';
SELECT * FROM customers WHERE first_name LIKE '__r%';
