mysql -h localhost -u root -p <db\createdatabase.sql
call rake db:migrate
call rake db:fixtures:load