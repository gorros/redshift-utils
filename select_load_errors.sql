select "table", STL_LOAD_ERRORS.*
from STL_LOAD_ERRORS
         join SVV_TABLE_INFO on table_id = tbl
where starttime >= CURRENT_DATE - 7 -- this give errors for last week, feel free to change it
order by starttime desc