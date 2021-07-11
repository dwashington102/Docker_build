# Testing
FROM ubuntu

# Update OS and packages
RUN apt-get -y update  && apt-get -y upgrade
RUN apt-get clean all

# Install usual OS packages
RUN apt-get install -y bash mlocate vim python-pip tzdata

# Set required ENVs
ENV TZ America/Chicago

# Run OS commands
RUN updatedb
RUN python3 -m pip install bpython quickfind

# Create Directories
RUN mkdir -p /app
RUN mkdir -p /data


ENTRYPOINT [ "/usr/bin/bash" ]
