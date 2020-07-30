SHOW databases;
create database keep_notes;
use keep_notes;
show tables;

-- User table fields: user_id, user_name, user_added_date, user_password, user_mobile
create table user(
	user_id int primary key, 
    user_name varchar(20), 
    user_added_date date, 
    user_password varchar(20), 
    user_mobile varchar(11)
);
describe user;
-- Note table fields: note_id, note_title, note_content, note_status, note_creation_date
create table note (
	note_id int primary key,
    note_title varchar(50),
    note_content varchar(200),
    note_status varchar(20),
    note_creation_date date
);

-- Category table fields : category_id, category_name, category_descr, category_creation_date, category_creator
create table category (
	category_id int primary key, 
    category_name varchar(20), 
    category_descr varchar(200), 
    category_creation_date date, 
    category_creator varchar(20)
);
-- Reminder table fields : reminder_id, reminder_name, reminder_descr, reminder_type, reminder_creation_date, reminder_creator
create table reminder (
	reminder_id int primary key, 
    reminder_name varchar(20), 
    reminder_descr varchar(200), 
    reminder_type varchar(20), 
    reminder_creation_date date, 
    reminder_creator varchar(20)
);
-- NoteCategory table fields : notecategory_id, note_id, category_id
create table noteCategory (
	notecategory_id int primary key, 
    note_id int, 
    category_id int,
    foreign key (note_id) references note(note_id),
    foreign key (category_id) references category(category_id) 
);
-- Notereminder table fields : notereminder_id, note_id, reminder_id
create table noteReminder (
	notereminder_id int primary key, 
    note_id int, 
    reminder_id int,
    foreign key (note_id) references note(note_id),
    foreign key (reminder_id) references reminder(reminder_id) 
);
-- usernote table fields : usernote_id, user_id, note_id
create table userNote (
	usernote_id int primary key,  
    user_id int, 
    note_id int,
    foreign key (note_id) references note(note_id),
    foreign key (user_id) references user(user_id) 
);


