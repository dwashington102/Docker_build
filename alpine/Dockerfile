FROM alpine:latest

# Upgrade and Update OS packages
RUN apk upgrade


# Installation of packages
RUN apk add bash vim mlocate tzdata python3

# Set required ENVs
ENV TZ America/Chicago

# Run OS commands
RUN updatedb
#RUN python3 -m pip install bpython quickfind

# Create Directories
RUN mkdir -p /app
RUN mkdir -p /data

ENTRYPOINT [ "/bin/bash" ]
