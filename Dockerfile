FROM rundeck/rundeck:3.2.8
COPY --chown=rundeck:root rundeck-config-storage.properties /etc/remco/templates
COPY --chown=rundeck:root plugins/* /home/rundeck/libext/

VOLUME ["/home/rundeck/server/data"]

EXPOSE 4440
ENTRYPOINT [ "/tini", "--", "docker-lib/entry.sh" ]
