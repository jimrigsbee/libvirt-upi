#!/bin/sh

while :
do
  csrs=$(oc get csr -ojson | jq -r '.items[] | select(.status == {} ) | .metadata.name')
  if [ `echo ${csrs} | wc -l` -eq 0 ]; then
    break
  fi
  sleep 15
done
