-- Fetch all the Notes from the Note table by a particular User.
select n.note_content, n.note_title from note n
join userNote un on n.note_id = un.note_id
where un.user_id = 2;

-- Fetch all the Notes from the Note table for a particular Category.
select n.note_content, n.note_title from note n
join noteCategory nc on n.note_id = nc.note_id
where nc.category_id = 5;

-- Fetch all the reminder details for a given note id.
select r.reminder_id, reminder_name, reminder_descr, reminder_type, reminder_creation_date, reminder_creator from reminder r
join noteReminder nr on r.reminder_id = nr.reminder_id
where nr.note_id = 3;


