# Installation of Image
FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

# Update the OS and packages
RUN dnf update -y && dnf upgrade -y 
RUN dnf clean all

# Install usual OS packages
RUN dnf install -y bash mlocate python3-pip vim 


# Install package required to set the container to user locate time
RUN dnf install  tzdata

# Create Directories
RUN mkdir -p /app
RUN mkdir -p /data


# Set required ENVs
ENV TZ America/Chicago


# Run 
RUN updatedb
RUN python3 -m pip install bpython quickfind

ENTRYPOINT [ "/usr/bin/bash" ]
WORKDIR /tmp