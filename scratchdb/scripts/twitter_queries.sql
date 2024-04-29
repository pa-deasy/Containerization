EXPLAIN
select t.*
from tweet t
left join follow f on f.followee_id = t.user_id
where f.follower_id = 1;
