-- Write Update query to modify particular Note for the given note Id.
update note set note_content = 'changed note content' where note_id = 4;
select * from note;