FROM container-registry.oracle.com/middleware/odi:12.2.1.3

LABEL Basilio_Carrero_Nevado="basilio.carrero@avanttic.com"

USER root
COPY *.sh /u01/oracle/container-scripts/
RUN chown oracle:oracle /u01/oracle/container-scripts/*.sh && chmod 775 /u01/oracle/container-scripts/*.sh
USER oracle

CMD [ "/u01/oracle/container-scripts/start.sh" ]
