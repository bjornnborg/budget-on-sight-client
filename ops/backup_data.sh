if [ -z "$1" ]
  then
    echo "No backup path provided. Usage: ./ops/backup_data some/path/to/save/"
    exit 1
fi
docker exec bosc-mysql /usr/bin/mysqldump -u root --password=root_pass budget-on-sight_development > backup-client-$(date +"%d_%m_%Y@%H:%M:%S").sql;
