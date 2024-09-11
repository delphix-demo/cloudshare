set linesize 200;
column Surname format a30;
column Name format a30;
column City format a30;
truncate table delphixdb.anagrafe;
select "number" as ID, maidenname as Surname, givenname as Name, city as City from delphixdb.anagrafe where rownum <=10 order by "number";