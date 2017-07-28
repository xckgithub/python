#
awk -F'|' '{print"insert into tablename values ("$3",'\''"$1"'\'',"$2");"}'  stu.dat > stu.sql;
echo 'commit;'>>stu.sql;
cat stu.sql;
#
nohup sqlplus username/password@dbname < stu.sql  &



awk -F'|' '{print "insert into emp_test values ('\''"$1"'\'', '\''"$2"'\'', '\''"$3"'\'', '\''"$4"'\'', to_date('\''"$5"'\'', '\''yyyy/mm/dd'\''), '\''"$6"'\'', '\''"$7"'\'', '\''"$8"'\'');"}' emp_test.txt > stu.sql;



'to_date('\''"$5"'\'', '\''yyyy/mm/dd'\'')',
