SHOW databases;
use keep_notes;
show tables;

-- Insert the rows into the created tables (Note, Category, Reminder, User, UserNote, NoteReminder and NoteCategory).
insert into user (user_id, user_name, user_added_date, user_password, user_mobile) 
values (1, "User1", '2019-12-17', 'user1', '1234567890'), 
	(2, "User2", '2019-12-17', 'user1', '1234567890'),
    (3, "User3", '2019-12-17', 'user1', '1234567890'),
    (4, "User4", '2019-12-17', 'user1', '1234567890'),
    (5, "User5", '2019-12-17', 'user1', '1234567890');
    
select * from user;

insert into note (note_id, note_title, note_content, note_status, note_creation_date)
values (1, 'title1', 'morning routine', 'completed', '2019-11-17'),
	(2, 'title2', 'afternoon routine', 'not completed', '2019-10-17'),
    (3, 'title3', 'evening routine', 'completed', '2019-06-17'),
    (4, 'title4', 'night routine', 'not completed', '2019-07-17'),
    (5, 'title5', 'weekend routine', 'completed', '2019-01-17');
    
select * from note;

insert into category (category_id, category_name, category_descr, category_creation_date, category_creator)
values (1, 'category1', 'event', '2019-11-17', 'User1'),
	(2, 'category2', 'event', '2019-11-17', 'User2'),
    (3, 'category3', 'event', '2019-11-17', 'User3'),
    (4, 'category4', 'event', '2019-11-17', 'User4'),
    (5, 'category5', 'event', '2019-11-17', 'User5');

select * from category;

insert into reminder (reminder_id, reminder_name, reminder_descr, reminder_type, reminder_creation_date, reminder_creator)
values (1, 'reminder1', 'bday', 'one time', '2019-11-17', 'User1'),
	(2, 'reminder2', 'event', 'one time', '2019-11-17', 'User1'),
    (3, 'reminder3', 'task', 'one time', '2019-11-17', 'User1'),
    (4, 'reminder4', 'aniv', 'one time', '2019-11-17', 'User1'),
    (5, 'reminder5', 'trip', 'one time', '2019-11-17', 'User1');
select * from reminder;

insert into noteCategory (notecategory_id, note_id, category_id)
values (1, 1, 1), 
	(2, 2, 2), 
    (3,3, 3), 
    (4, 4, 4), 
    (5, 5, 5);
select * from noteCategory;

insert into notereminder (notereminder_id, note_id, reminder_id)
values (1, 1, 1), 
	(2, 2, 2), 
    (3,3, 3), 
    (4, 4, 4), 
    (5, 5, 5);
select * from noteReminder;

insert into usernote (usernote_id, user_id, note_id)
values (1, 1, 1), 
	(2, 2, 2), 
    (3,3, 3), 
    (4, 4, 4), 
    (5, 5, 5);
select * from usernote;






-- NoteCategory table fields : notecategory_id, note_id, category_id
-- Notereminder table fields : notereminder_id, note_id, reminder_id
-- usernote table fields : usernote_id, user_id, note_id
    
    
    
    
    