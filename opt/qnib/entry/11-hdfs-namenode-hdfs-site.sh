#!/bin/bash
set -x
#HDFS_NAMENODE_LIST=$(go-fisherman --out list --template "hdfs://{{.IP}}:8020" namenode)
HDFS_NAMENODE_LIST="hdfs://tasks.namenode:8020"
cat /opt/qnib/hdfs/etc/hdfs-site.xml \
 |sed -e "s#HDFS_NAMENODE_LIST#${HDFS_NAMENODE_LIST}#" \
 > /opt/hadoop/etc/hadoop/hdfs-site.xml
