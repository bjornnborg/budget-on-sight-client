if [ -z "$1" ]
  then
    echo "No backup file provided. Usage: ./ops/restore_data some_file.sql"
    exit 1
fi
cat $1 | docker exec -i bosc-mysql /usr/bin/mysql -u root --password=root_pass budget-on-sight_development
