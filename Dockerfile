FROM andrewosh/binder-base

MAINTAINER Jason Gravel <jgravel@uci.edu>

USER root

# Add dependency

RUN apt-get update
RUN apt-get pip
RUN apt-get install -y graphviz


USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Install requirements for Python 3
#RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt
