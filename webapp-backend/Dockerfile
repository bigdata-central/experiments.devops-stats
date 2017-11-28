ARG base_tag
FROM $base_tag

ENV WORKDIR "/srv/"
WORKDIR $WORKDIR

COPY . $WORKDIR
RUN python --version && pip freeze  && python -c 'import sys; sys.path' &&  python -c 'from cassandra.cluster import Cluster; cluster = Cluster( ["127.0.0.1"], port=9042 )'
RUN python devops.py
