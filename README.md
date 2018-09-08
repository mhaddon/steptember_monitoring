# steptember_monitoring

This is a monitoring tool for Steptember.

It monitors the progress of teams within your organisation.

To run it you need to create a steptember.env file with your credentials (see steptember.env.tmpl)

Then you need to build the docker containers (build.sh)

Then you need to start docker-compose (docker-composer up)

The application uses port 8080 for adminer, 3306 for mysql and 3000 for grafana

If the grafana dashboards dont load by default the jsons are in the project