Quick way to dockerise a Postgresql Rails 6 app  
`./dockerise <RAILS_ROOT_DIR>`

Now the app can be run anywhere with the following commands:
```
docker-compose build
docker-compose up
```
If you receive a credentials error you can regenerate keys with `EDITOR=vim bundle exec rails credentials:edit`

The app can be run in this docker container on AWS Elastic Beanstalk after allowing the host in `/config/environments/<ENVIRONMENT_BEING_USED>`
If hosting online you may want to change the port from 3000 to 80/443 in `docker-compose.yml` and `Dockerfile`
```
config.hosts << "mini-blog-dev.eu-west-1.elasticbeanstalk.com"  
config.webpacker.check_yarn_integrity = false
```
To undockerise the app  `./undockerise <RAILS_ROOT_DIR>`  
After undockerising `/config/database.yml` will need to be updated with the correct database names
