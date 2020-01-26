FROM container-registry.oracle.com/middleware/fmw-infrastructure:12.2.1.3

LABEL Basilio_Carrero_Nevado="basilio.carrero@avanttic.com"

USER root
RUN yum install -y unzip file binutils glibc libaio sysstat numactl numactl-devel libXtst libXrender libXext net-tools
RUN mkdir -p /u01/oracle/install && chown oracle:oracle /u01/oracle/install

USER oracle
COPY ./bin/fmw_12.2.1.3.0_odi_Disk*.zip /u01/oracle/install/
COPY ./odi.rsp /u01/oracle/

RUN cd /u01/oracle/install/ && unzip "*.zip" && \
    $JAVA_HOME/bin/java -jar /u01/oracle/install/fmw_12.2.1.3.0_odi.jar -silent -responseFile /u01/oracle/odi.rsp -invPtrLoc /u01/oracle/oraInst.loc && \
    cd /u01/oracle/ && rm -Rf /u01/oracle/install/

CMD [ "/u01/oracle/odi/studio/odi.sh" ]
