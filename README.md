# Deploy checklist

### OS user

+ Create OS `deploy` user
- record password in passwords file
+ include deploy user in sudoers group
- add RSA key for deployer user

### Locale

+ set locale

### Time

+ Time zone set

### Base installations

+ upgrade OS packages
+ Upgrade Git

### Install Ruby

+ Install Chruby
+ Install Ruby
+ Install Rails
+ Install Bundler
+ Install Capistrano
+ Install ImageMagick
+ Install RMagick

### Node

+ Install Node.js

### DB

+ Install PostgreSQL
+ Create DB user
+ Create DB user password

### Web server

+ Install NGNIX
+ Configure NGNIX
+ Start NGNIX
+ Stop Apache


### Prepare Rails app

- Change ownership of the application files to deployer user
+ bundle install
+ Rake create & prepare app DB
+ Precompile assets
- Сделать backup Heroku
- Скачать DB dump из Heroku на Digital Ocean
- Импортировать DB dump в Postgres

### Store passwords

- Generate secret key base
- Store secret key base in ENV & reboot
- Check that secret key base in Rails app points to correct ENV var
- Set DB variables in Rails app

### App server

- Configure Puma in Rails app
- Create log, pid & socket directories
- Install Upstart
- Create Puma upstart script
- Reboot OS
- Start Puma applications manually
- Start Puma applications via script
- Listen to Puma log

### Domain

- прописать домен в NS DO
- использовать у домена DNS от Digital Ocean
- добавить записи MailGun в NS DO

### Setup Git-deploy

- Add hosting as Git-remote
- Create post-receive Git hook
- Push local to remote
