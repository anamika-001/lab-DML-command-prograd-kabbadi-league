
-- PROGRESSION 1:
create table city(
id number(11),
name varchar(50)
);
--1. Insert into city
 Insert into city(id,name)values(1,'india');
 select * from city;
--2. Insert into referee
 insert into referee(id,name)values(2,'john');
  select * from referee;
--3. Insert into innings
create table innings(id number(11),innings_number varchar(50));

select * from innings;
--4. Insert into extra_type
create table extra_type(id number(11),name varchar(50));
insert into extra_type(id,name)values(4,'na');
SELECT * FROM extra_type;
--5. Insert into skill
create table skill(id number(11),name varchar(50));

select * from skill;
--6. Insert into team
insert into team(id,name,coach,home_city,captain)values(6,'sam','bhuvan',1,1);
select * from team;
--7. Insert into player
INSERT INTO player
(id,name,country,skill_id,team_id)
VALUES(7,'shyam','india',3,4);
select * from player;
--8. Insert into venue
INSERT INTO venue
(id,stadium_name,city_id)
VALUES(8,'kolkata',5);


SELECT * FROM venue;
--9. Insert into event
INSERT INTO event
(id,innings_id,events_no,raide_id,raider_points,defending_points,clock_in_seconds,team_one_score,team_two_score)
VALUES(9,1,4,7,5,4,3,6,50);
SELECT * FROM event;

--10. Insert into extra_event
INSERT INTO extra_event
(id,event_id,extra_type_id,points,scoring_team_id)
VALUES(10,1,2,3,4);
SELECT * FROM extra_event;
--11. Insert into outcome
INSERT INTO outcome
(id,status,winner_team_id,score,player_of_match)
VALUES(11,'winner',1,40,8);
SELECT * FROM outcome;
--12. Insert into game

INSERT INTO game
(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,referee_id_1,referee_id_2,first_innings_id,second_innings_id)
VALUES(12,TO_DATE('12/01/2016', 'DD/MM/YYYY'),7,6,21,9,1,2,33,7);
SELECT * FROM game;
--13. Update player table
UPDATE player
SET name='puskar'
WHERE ID=7;

SELECT * FROM PLAYER;
--14. Update player table
UPDATE player
SET team_id=1
WHERE ID=7;

SELECT * FROM PLAYER;
--15. Update player table
UPDATE player
SET id=3
WHERE team_id=1;

SELECT * FROM PLAYER;
--16. Update player table
UPDATE player
SET country='bhutan'
WHERE name='puskar';

SELECT * FROM PLAYER;
--17. Delete from extra_type
DELETE FROM extra_type
WHERE name='na';

SELECT * FROM extra_type;
--18. Delete from referee
DELETE FROM referee
WHERE id=2;

SELECT * FROM referee;

--19. Delete from player
DELETE FROM player
WHERE team_id=1;

SELECT * FROM PLAYER;
--20. Delete from outcome
DELETE FROM outcome
WHERE status='winner';

SELECT * FROM outcome;