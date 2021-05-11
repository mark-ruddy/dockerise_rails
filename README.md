# dockerise_rails

To dockerise a Rails 5.2+ app with Postgres database.

Add the following to the `/config/environments/<environment_to_run>`

```
config.hosts << "mini-blog-dev.eu-west-1.elasticbeanstalk.com"  
config.webpacker.check_yarn_integrity = false
```

Add `database.yml` to `/config/database.yml`  
Add `Dockerfile` to root  
Add `docker-compose.yml` to root  
add `entrypoint.sh` to root  

## Keys

Run `EDITOR=vim rails credentials:edit` and `wq`
