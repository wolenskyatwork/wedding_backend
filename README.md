# LIZZIE AND CARLOS GET HITCHED

## DB Setup
* Navigate to a directory owned by the `postgres` user where you want to create the PostgreSQL log file and a directory for the database files
* Initialize the DB directory `sudo -u postgres /usr/lib/postgresql/10/bin/initdb db_dir/`
* Start Postgres `sudo -u postgres /usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start`
* You should see something like "waiting for server to start.... done, server started"
* You can use `sudo -u postgres psql` to start the postgres console as the `postgres` user
* From within the directory for the rails app, run `rake db:create`
* To create the prod DB from the prod machine, run `RAILS_ENV=production rake db:create`

## Restarting Services
* Restart Unicorn after changes to Rails app `sudo service unicorn_wedding_server restart`
* Shouldn't have to do this, but can restart nginx (reverse proxy) via `sudo service nginx restart`
