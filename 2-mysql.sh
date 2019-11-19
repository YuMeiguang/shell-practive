#!/bin/bash #文件名:read_db.sh #用途:从数据库中读取数据
USER="root"
PASS="yumg"
depts=`mysql -u $USER -p$PASS test <<EOF | tail -n +2
select * from pipeline
EOF`
for d in $depts;
do
echo Department : $d
result="`mysql -u $USER -p$PASS test <<EOF
SET @i:=0;
SELECT @i:=@i+1 as rank,id,name,jira_project_id FROM pipeline WHERE id="$d" ORDER BY rank DESC; EOF`" 
 echo "$result"
echo
done

