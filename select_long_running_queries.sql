select usename, query, datediff(minutes, starttime, endtime) as duration_min,
trim(querytxt) as sqlquery, starttime
from stl_query
join pg_user on pg_user.usesysid = stl_query.userid
where starttime >= current_date - 1
order by duration_min desc
limit 100;