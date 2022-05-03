FROM python:3.10.4-slim

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN adduser --uid 2345  --disabled-password unpriv
WORKDIR /home/unpriv
USER unpriv
