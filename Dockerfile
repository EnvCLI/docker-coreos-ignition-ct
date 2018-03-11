############################################################
# Dockerfile
############################################################

# Set the base image
FROM alpine:3.7

############################################################
# Installation
############################################################

RUN apk add --no-cache bash git &&\
    curl -L https://github.com/coreos/container-linux-config-transpiler/releases/download/v0.7.0/ct-v0.7.0-x86_64-unknown-linux-gnu -o /usr/local/bin/ct

############################################################
# Execution
############################################################

CMD [ "/usr/local/bin/ct" ]
