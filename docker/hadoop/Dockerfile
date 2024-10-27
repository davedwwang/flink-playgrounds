ARG HADOOP_IMAGE_VERSION
FROM apache/hadoop:$HADOOP_IMAGE_VERSION
WORKDIR /opt/hadoop
COPY conf/core-site.xml etc/hadoop
COPY conf/hdfs-site.xml etc/hadoop
COPY conf/yarn-site.xml etc/hadoop
COPY entrypoint/hadoop-entrypoint.sh bin/
RUN chmod +x bin/hadoop-entrypoint.sh