insert into blogger(username, password, name, created_at, email)
values
('person1', 'pw1', 'one', '2020-1-1', 'person1@anymail.com'),
('person2', 'pw2', 'two', '2019-2-2', 'person2@anymail.com'),
('person3', 'pw3', 'three', '2022-3-3', 'person3@anymail.com'),
('person4', 'pw4', 'four', '2021-4-4', 'person4@anymail.com'),
('person5', 'pw5', 'five', '2018-5-5', 'person5@anymail.com');

insert into blog_post (blogger_id, content, title, created_at)
values
('6', 'doh!', 'random1', '2010-1-1'),
('6', 'a deer!', 'random2', '2010-1-1'),
('7', 'a female deer!', 'random3', '2010-1-1'),
('8', 'country road....', 'random4', '2020-1-1'),
('9', 'take me home...', 'random5', '2020-1-2');

insert into blog_post_comment (blogger_id, blog_post_id, content, created_at)
values
('10', '1', 'where am i?', '2020-1-1'),
('6', '2', 'who are u?', '2020-1-2'),
('6', '3', 'what is this', '2020-1-3'),
('7', '4', 'zzZZZzzzzz', '2020-1-4'),
('7', '5', 'continue....', '2020-1-5');

select * from blogger
where created_at > '2020-01-01';

update blogger set password='pass'
where username='person3';

update blogger set password='bad_password'
where password='pass';

select bp.content, bp.title, b.username
from blogger b inner join blog_post bp on b.id =bp.blogger_id;

select bpc.content, bp.title, b.username
from blogger b inner join blog_post bp on b.id=bp.blogger_id
inner join blog_post_comment bpc on bp.id=bpc.blog_post_id ;

delete from blog_post_comment
where content='delete me';