CREATE TABLE user_profile(
    id SERIAL NOT NULL,
    name varchar(255),
    PRIMARY KEY(id)
);

CREATE TABLE follow(
    id SERIAL NOT NULL,
    follower_id integer,
    followee_id integer,
    PRIMARY KEY(id),
    CONSTRAINT follow_follower_id_fkey FOREIGN key(follower_id) REFERENCES user_profile(id),
    CONSTRAINT follow_followee_id_fkey FOREIGN key(followee_id) REFERENCES user_profile(id)
);
CREATE INDEX follower_id_1702349371904_index ON "follow" USING btree ("follower_id");

CREATE TABLE tweet(
    id SERIAL NOT NULL,
    user_id integer,
    message varchar(255),
    PRIMARY KEY(id),
    CONSTRAINT tweet_user_id_fkey FOREIGN key(user_id) REFERENCES user_profile(id)
);
CREATE INDEX user_id_1702349461367_index ON "tweet" USING btree ("user_id");