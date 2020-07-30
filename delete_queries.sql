show databases;
use keep_notes;
show tables;

-- Write a query to create a new Note from particular User (Use Note and UserNote tables - insert statement).
insert into note (note_id, note_title, note_content, note_status, note_creation_date) 
values(6, "title6", "content6", "completed", "2019-07-12");
insert into userNote (user_id, note_id) values(6, last_insert_id());

-- Write a query to create a new Note from particular User to particular Category(Use Note and NoteCategory tables - insert statement)
insert into note (note_id, note_title, note_content, note_status, note_creation_date)
values (6, 'title6', 'new routine', 'started', '2020-12-17');
insert into noteCategory (notecategory_id, note_id, category_id)
values (6, 3, 5);

-- DONE:  Write a query to set a reminder for a particular note (Use Reminder and NoteReminder tables - insert statement)
insert into reminder (reminder_id, reminder_name, reminder_descr, reminder_type, reminder_creation_date, reminder_creator)
values (6, 'reminder1', 'bday', 'one time', '2019-11-17', 'User1');
insert into notereminder (notereminder_id, note_id, reminder_id)
values(6, 2, last_insert_id());


-- Write a query to delete particular Note added by a User(Note and UserNote tables - delete statement)
delete from UserNote where user_id = 3 AND note_id = 3;
delete from Notereminder where note_id = 3;
delete from NoteCategory where note_id = 3;
delete from Note where note_id = 3;

-- Write a query to delete particular Note from particular Category(Note and NoteCategory tables - delete statement)
delete from NoteCategory where category_id = 5 AND note_id = 5;
delete from Notereminder where note_id = 5;
delete from UserNote where note_id = 5;
delete from Note where note_id = 5;




