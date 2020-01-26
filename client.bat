if not exist "%cd%\ODIconf" mkdir ODIconf
if not exist "%cd%\ODIdata" mkdir ODIdata
docker run --rm -it --name ODIclient --privileged --net odistack_default -e DISPLAY="host.docker.internal:0" -v "%cd%\ODIconf:/u01/oracle/.odi:rw" -v "%cd%\ODIdata:/u01/oracle/hostfolder:rw" docker.avanttic.com/odistudio:12.2.1.3
