# This code comes from a licensed Apache 2.0 code repository :
# https://github.com/scalactic/kerberos-sidecar/blob/main/app/rekinit.sh

#!/usr/bin/env bash

echo "Kerberos sidecar container is started at $(date)."

while true; do
  echo "*** Trying to kinit at $(date). ***"
  kinit -kt "$SECRETS/$KEYTAB" "$PRINCIPAL"

  result=$?
  if [ "$result" -eq 0 ]; then
    echo "kinit is successfull. Sleeping for $REKINIT_PERIOD seconds."
  else
    echo "kinit is exited with error. result code: $result"
    exit 1
  fi

  sleep "$REKINIT_PERIOD"
done