-- Run once, after setup.sql, to add rulebook links to the events table
alter table events add column if not exists rulebook_url text;

-- Point each event to its rulebook PDF (uploaded to /rulebooks/ on your site)
update events set rulebook_url = 'rulebooks/robo-race.pdf'            where name = 'Robo Race';
update events set rulebook_url = 'rulebooks/line-follower.pdf'        where name = 'Line Follower';
update events set rulebook_url = 'rulebooks/robo-soccer.pdf'          where name = 'Robo Soccer';
update events set rulebook_url = 'rulebooks/sumo-war.pdf'             where name = 'Sumo War';
update events set rulebook_url = 'rulebooks/rc-car-race.pdf'          where name = 'RC Car Race';
update events set rulebook_url = 'rulebooks/hardware-hackathon.pdf'   where name = 'Hardware Hackathon';
update events set rulebook_url = 'rulebooks/paper-presentation.pdf'   where name = 'Paper Presentation';
