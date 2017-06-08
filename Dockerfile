FROM qnib/alplain-jdk8

ENV HADOOP_VER=2.7.3 \
    ENTRYPOINTS_DIR=/opt/qnib/entry

RUN apk add --no-cache curl bc jq nmap coreutils \
 && curl -fsL http://apache.claz.org/hadoop/common/hadoop-${HADOOP_VER}/hadoop-${HADOOP_VER}.tar.gz | tar xzf - -C /opt && mv /opt/hadoop-${HADOOP_VER} /opt/hadoop \
 && rm -rf /tmp/* \
 && adduser -D -s /bin/bash hadoop
COPY opt/qnib/entry/*.sh /opt/qnib/entry/
COPY opt/qnib/hdfs/etc/*.xml /opt/qnib/hdfs/etc/
COPY etc/bashrc.hadoop /etc/
