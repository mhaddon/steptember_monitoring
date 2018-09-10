FROM grafana/grafana

USER root

RUN apt-get update -y \
 && apt-get install gettext-base \
 && chown grafana:grafana /etc/grafana/provisioning/datasources/ \
 && chown grafana:grafana /etc/grafana/provisioning/dashboards/

COPY configs /var/configs
COPY configs/dashboards/dashboards.yaml /etc/grafana/provisioning/dashboards/
COPY start.sh /start.sh

USER grafana

ENTRYPOINT [ "/start.sh" ]