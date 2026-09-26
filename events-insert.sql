-- Run after setup.sql (and admin.sql if already applied) to add your events.
-- Fill coordinator_name / coordinator_phone / prize for each event whenever you're ready
-- (via this SQL, or directly in the Admin panel — both update the same table).

insert into events (name, track, description, venue, team_size, prize, fee, coordinator_name, coordinator_phone) values
('Robo Race','Robotics','Navigate your bot through the obstacle track.',JNNCE,'2-4',null,200,VIVEK GK,7411563037),
('Line Follower','Robotics','Build a bot that follows the line fastest.',JNNCE,'1-4',null,200,null,null),
('Robo Soccer','Robotics','Bot-vs-bot soccer knockout matches.',JNNCE,'2-4',null,200,null,null),
('Sumo War','Robotics','Push your opponent''s bot out of the ring.',JNNCE,'1-3',null,200,null,null),
('RC Car Race','Robotics','Timed RC car race against the clock.',JNNCE,'1-2',null,200,null,null),
('Hardware Hackathon','Code & Compute','Build a working hardware prototype against the clock.',JNNCE,'2-4',null,400,null,null),
('Paper Presentation','Research & Presentation','Present your research to the judging panel.',JNNCE,'1-3',null,400,null,null);

-- Example of how to fill in details later, one event at a time:
-- update events set prize='₹5,000', coordinator_name='Rakesh', coordinator_phone='9876543210'
--   where name='Robo Race';
