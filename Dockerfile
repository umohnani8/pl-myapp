# Docker file for the urvi_plugin plugin app

FROM fnndsc/ubuntu-python3:latest
MAINTAINER fnndsc "dev@babymri.org"

ENV APPROOT="/usr/src/urvi_plugin"  VERSION="0.1"
COPY ["urvi_plugin", "${APPROOT}"]
COPY ["requirements.txt", "${APPROOT}"]

WORKDIR $APPROOT

RUN pip install -r requirements.txt

CMD ["urvi_plugin.py", "--json"]