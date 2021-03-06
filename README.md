# sql-challenge

After reading over the assignment instructions, I set up a PostgreSQL database called Employee SQL. 

I proceeded to write a series of create table statements for each data source and to import them just to test and confirm field labeling and data structure. 
Tables created:
departments,
dept_emp,
dept_manager,
employees,
salaries,
and titles

I copied the 6 create table statements into an excel file to start the ERD sketching process. 

With a few tweaks of the create table code using find and replace, identifying the required primary and foreign keys and their referential links, I converted the select statements into a physical ERD. I also used this stage of the process to identify the necessary load order once the foreign keys were applied.

I copied the physical ERD from Excel into https://app.quickdatabasediagrams.com/#/d/wWImmQ to generate a graphical image of the database structure. 

I returned to my create table statements in PostgreSQL and added the primary and foreign keys. I ran drop table for each and recreated the 6 tables with the added coding. I then loaded the tables in the order laid out in the ERD process.

Tables created and reloaded in load order:
1 - titles,
2 - employees,
3 - departments,
4 - dept_emp,
5 - dept_manager,
and 6 - salaries,

I proceeded then to respond to each of the query question writing the necessary code to interpret the questions and generate the correct responses. Some queries were basic with very simple criteria. Others required single or multiple joins with single or multiple criteria including the use of wild cards. 

For the bonus, after some research, I utilized the recommended links to establish a means of querying the postgreSQL database. I created a new Anaconda Enviroment as the PSYCOPG2 module was conflicted with other modules I'd previously used. Once the modules were functioning properly, I applied both the dataframe merging techniques and SQL joins to create dataframes that allowed for the generation the requested histogram and bar chart. 

I also confirmed the name of Employee ID 499942 was April Foolsday.
