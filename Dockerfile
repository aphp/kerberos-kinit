# This code is an adaptation licensed Apache 2.0 material :
# https://github.com/scalactic/kerberos-sidecar/blob/main/app/Dockerfile

FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y \
        krb5-user \
        libkrb5-dev

RUN useradd -ms /bin/bash rekinit

USER rekinit

WORKDIR /home/rekinit

COPY --chown=rekinit ./script/rekinit.sh .

RUN chmod +x rekinit.sh

ENTRYPOINT ["bash", "rekinit.sh"]