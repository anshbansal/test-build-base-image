FROM python:3.8 as base

COPY ./base-requirements.txt requirements.txt

RUN apt-get update && apt-get install -y \
        jq \
        librdkafka-dev \
        python3-ldap \
        libldap2-dev \
        libsasl2-dev \
        libsasl2-modules \
        ldap-utils \
    && python -m pip install --upgrade pip wheel setuptools==57.5.0 \
    && pip install -r requirements.txt