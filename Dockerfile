FROM python:3.8-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install OS dependencies
RUN apt-get update && \
    apt-get install -y chromium curl jo

COPY requirements.txt /

# Install pip dependencies
RUN pip install -U pip && \
    pip install -r /requirements.txt

# Purge cache etc
RUN rm -fr /var/lib/apt
