FROM python:3
COPY asn /asn
WORKDIR /asn
RUN pip install -r requirements.txt
EXPOSE 8000
CMD pelican -t themes/as207414 -l -b 0.0.0.0