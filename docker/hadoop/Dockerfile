ARG HADOOP_IMAGE_VERSION
FROM apache/hadoop:$HADOOP_IMAGE_VERSION
WORKDIR /opt/hadoop
COPY --chown=hadoop:users conf/core-site.xml etc/hadoop
COPY --chown=hadoop:users conf/hdfs-site.xml etc/hadoop
COPY --chown=hadoop:users conf/yarn-site.xml etc/hadoop
COPY --chown=hadoop:users entrypoint/hadoop-entrypoint.sh bin/
USER root
RUN chmod +x bin/hadoop-entrypoint.sh && mkdir -p /data/hadoop && chown hadoop:users /data/hadoop
USER hadoop