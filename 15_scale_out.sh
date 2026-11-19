#!/bin/bash
. ./config.sh

#Doc
echo "14" > ./docs/docid

print_command "${kubectl_cmd} scale clusters.postgresql.k8s.enterprisedb.io ${cluster_name} --replicas=4\n"

${kubectl_cmd} scale clusters.postgresql.k8s.enterprisedb.io ${cluster_name} --replicas=4

