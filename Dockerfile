# pull official base image
FROM python:3

MAINTAINER Ganawa Juanah
LABEL version="1.0"
LABEL description="ASN Website"

# setup enviroment variables
ENV USER=asn
ENV GROUP=asn
ENV HOME=/home/asn
ENV ASN_HOME=/home/asn/app

# setup flask variables
ENV FLASK_ENV=production

# create the asn user
RUN addgroup --system $USER
RUN adduser --system --ingroup $GROUP --home $HOME  $USER

# copy project
COPY ./app $ASN_HOME

# change directory
WORKDIR $ASN_HOME

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# chown all the files to the app user
RUN chown -R asn:asn $ASN_HOME

# change to the app user
USER asn

# Entrypoint
ENTRYPOINT ["./entrypoint.sh"]