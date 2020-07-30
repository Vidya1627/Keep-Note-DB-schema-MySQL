-- Fetch the row from User table based on Id and Password.
select * from user where user_id = 3 and user_password = 'user1';

-- Fetch all the rows from Note table based on the field note_creation_date.
select * from note where note_creation_date between '2019-07-17' and '2019-11-17';

-- Fetch all the Categories created after the particular Date.
select * from category where category_creation_date > '2019-08-17';

-- Fetch all the Note ID from UserNote table for a given User.
select note_id from userNote where user_id = 3;

-- Fetch the reminder details for a given reminder id.
select * from reminder where reminder_id = 1;

