# Testing
FROM ubuntu

# Update OS and packages
RUN apt-get -y update  && apt-get -y upgrade
RUN apt-get clean all

# Install usual OS packages
RUN apt-get install -y --no-install-recommends \
bash \
wget \
mlocate \
vim \
tzdata

RUN apt-get clean

# Set required ENVs
ENV TZ America/Chicago

# Run OS commands
RUN updatedb
#RUN python3 -m pip install bpython quickfind

# Create Directories
RUN mkdir -p /app
RUN mkdir -p /data

# Copy files form HOST to image
ADD ./get_mp4_proj/get* /bin/
ADD INPUTRC /root/.inputrc

# When connecting to running container start in this directory
WORKDIR /data

# When connecting to running container start with this command
ENTRYPOINT [ "/usr/bin/bash" ]
