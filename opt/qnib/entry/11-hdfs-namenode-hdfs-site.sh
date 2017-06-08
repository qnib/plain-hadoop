#!/bin/bash
set -x
HDFS_NAMENODE_LIST=$(go-fisherman --out list --template "hdfs://{{.IP}}:8020" namenode)
cat /opt/qnib/hdfs/etc/hdfs-site.xml \
 |sed -i'' -e "s/HDFS_NAMENODE_LIST/${HDFS_NAMENODE_LIST}/" \
 > /opt/hadoop/etc/hadoop/hdfs-site.xml
