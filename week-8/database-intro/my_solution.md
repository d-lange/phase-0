### 1. Select all data for all states.

command: SELECT * FROM states;

### 2. Select all data for all regions.

command: SELECT * FROM regions;

### 3. Select the state_name and population for all states.

command: SELECT state_name, population FROM states;

### 4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

command: SELECT state_name, population FROM states ORDER BY population DESC;

### 5. Select the state_name for the states in region 7.

command: SELECT state_name FROM states WHERE region_id = 7;

### 6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

command: SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

### 7. Select the state_name for states with a population between 1 million and 1.5 million people.

command: SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

### 8. Select the state_name and region_id for states ordered by region in ascending order.

command: SELECT state_name, region_id FROM states ORDER BY region_id ASC;

### 9. Select the region_name for the regions with "Central" in the name.

command: SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

### 10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This would involve joining the tables).

command: SELECT regions.region_name, states.state_name FROM regions, states ORDER BY region_id ASC;

![Schema](./database-intro/Schema.png)

### REFLECTION

#### What are databases for?

Databases are used for storing information. By storing information, one can then compare large amounts of information and manipulate the data.

#### What is a one-to-many relationship?

A one-to-many relationship is where two tables are involved. An item from one of the tables as one relationship with itself but many with the other table.

#### What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique identifier for information in a table. A foreign key is a primary key within another table and connecting the two.

#### How can you select information out of a SQL database? What are some general guidelines for that?

From what I've used and read so far, the command SELECT and FROM are the two essential ways to get information from a SQL database.