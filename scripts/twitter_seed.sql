insert into user_profile(name) VALUES('John');
insert into user_profile(name) VALUES('Mike');
insert into user_profile(name) VALUES('Tony');


insert into follow(follower_id, followee_id) VALUES (1, 2);
insert into follow(follower_id, followee_id) VALUES (1, 3);

insert into tweet(user_id, message) VALUES (2, 'Hello world 1');
insert into tweet(user_id, message) VALUES (2, 'Hello world 2');
insert into tweet(user_id, message) VALUES (2, 'Hello world 3');
insert into tweet(user_id, message) VALUES (3, 'Hi world 1');
insert into tweet(user_id, message) VALUES (3, 'Hi world 2');
insert into tweet(user_id, message) VALUES (3, 'Hi world 3');
