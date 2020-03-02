select pg_user.usename,
       SVL_S3QUERY_SUMMARY.query,
       "left"(querytxt, 50) as querytxt,
       SVL_S3QUERY_SUMMARY.starttime,
       SVL_S3QUERY_SUMMARY.endtime,
       elapsed,
       external_table_name,
       file_format,
       s3_scanned_rows / 1000 / 1000 as s3_scanned_rows_mln,
       cast(s3_scanned_bytes / 1024 / 1024 / 1024 as float) / 1024 * 5 as cost,
       s3query_returned_rows
from SVL_S3QUERY_SUMMARY
         join pg_user on pg_user.usesysid = SVL_S3QUERY_SUMMARY.userid
         join STL_QUERY on STL_QUERY.query = SVL_S3QUERY_SUMMARY.query;