-- Run after setup.sql (and admin.sql if already applied) to add your events.
-- Fill coordinator_name / coordinator_phone / prize for each event whenever you're ready
-- (via this SQL, or directly in the Admin panel — both update the same table).

insert into events (name, track, description, venue, team_size, prize, fee, coordinator_name, coordinator_phone) values
('Robo Race','Robotics','Navigate your bot through the obstacle track.',null,'2-4',null,200,null,null),
('Line Follower','Robotics','Build a bot that follows the line fastest.',null,'1-3',null,200,null,null),
('Robo Soccer','Robotics','Bot-vs-bot soccer knockout matches.',null,'2-4',null,200,null,null),
('Sumo War','Robotics','Push your opponent''s bot out of the ring.',null,'1-3',null,200,null,null),
('RC Car Race','Robotics','Timed RC car race against the clock.',null,'1-2',null,200,null,null),
('Hardware Hackathon','Code & Compute','Build a working hardware prototype against the clock.',null,'2-4',null,400,null,null),
('Paper Presentation','Research & Presentation','Present your research to the judging panel.',null,'1-3',null,400,null,null);

-- Example of how to fill in details later, one event at a time:
-- update events set prize='₹5,000', coordinator_name='Rakesh', coordinator_phone='9876543210'
--   where name='Robo Race';

-- Optional: add rulebook links right away (see rulebook-column.sql for the full set)
alter table events add column if not exists rulebook_url text;
update events set rulebook_url = 'rulebooks/robo-race.pdf'            where name = 'Robo Race';
update events set rulebook_url = 'rulebooks/line-follower.pdf'        where name = 'Line Follower';
update events set rulebook_url = 'rulebooks/robo-soccer.pdf'          where name = 'Robo Soccer';
update events set rulebook_url = 'rulebooks/sumo-war.pdf'             where name = 'Sumo War';
update events set rulebook_url = 'rulebooks/rc-car-race.pdf'          where name = 'RC Car Race';
update events set rulebook_url = 'rulebooks/hardware-hackathon.pdf'   where name = 'Hardware Hackathon';
update events set rulebook_url = 'rulebooks/paper-presentation.pdf'   where name = 'Paper Presentation';
