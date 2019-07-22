delete from messages;

insert into message(id, text, tag, user_id) values
(1, 'first', 'my-tag', 1)
(1, 'second', 'a', 1)
(1, 'third', 'b', 1)
(1, 'fourth', 'c', 1)

alter sequence hibernate_sequence restart with 10;