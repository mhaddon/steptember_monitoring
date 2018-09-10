## Steptember Monitoring Tool

This is a monitoring tool for Steptember.

It monitors the progress of teams within your organisation.

It does this by logging into Steptember as your account and scraping the progress data every 5 minutes.

Data scraped is saved to MySQL, in the 3 tables:
 - Teams (info of the team)
 - Participants (info of the team members)
 - Records (Progress data of the team members)
 
### How to Run

To run it you need to create a steptember.env file with your credentials (see steptember.env.tmpl)

Then you need to build the docker containers (build.sh)

Then you need to start docker-compose (docker-composer up)

### How to Access

The application exposes port 8080 for adminer and 3000 for grafana

The Grafana login is root, and the password is defined in docker-compose.yml

The MySQL login is defined in mysql.env

### Known Bugs

Steptember does not have very performant servers and sometimes can not even load the JS/CSS on a normal page load due to demand.

Because of this requests may time out, the request that times out the most is the request for this application to login.

If a request times out the application will restart the scraper and it should recover without intervention.