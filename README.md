# kerberos-kinit

## License quote

This repository contains material licensed under the Apache 2.0 licence. The original licensed work can be found here : https://github.com/scalactic/kerberos-sidecar

## Description

This is a simple docker image continuously refreshing a krb5 ticket cache. It is intended to be used in K8S as a side-car runing in a pod needing such authentication mechanism.

## How to use

- Modify the template Kerberos config file located in the `config` folder of this repository to suit your needs
- Inject it at runtime in the container
- Insode your K8S pod, share a volume containing the rb5 cache between your application container and the one runing this image. 
