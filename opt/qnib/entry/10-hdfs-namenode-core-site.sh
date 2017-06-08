#!/bin/bash
set -x

cat /opt/qnib/hdfs/etc/core-site.xml \
 > /opt/hadoop/etc/hadoop/core-site.xml
