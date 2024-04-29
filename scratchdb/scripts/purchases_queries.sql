EXPLAIN
select count(id), customer_id
from purchase
GROUP BY customer_id;