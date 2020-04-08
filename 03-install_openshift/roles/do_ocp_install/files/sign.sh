#!/bin/sh

while :
do
  if [ $(oc get csr -ojson | jq -r '.items[] | select(.status == {} ) | .metadata.name' | wc -l) -eq 0 ]; then
    break
  fi
  for csr in $(oc get csr -ojson | jq -r '.items[] | select(.status == {} ) | .metadata.name'); do
    oc adm certificate approve ${csr}
  done
  sleep 20
done
