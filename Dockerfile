FROM python:3.12-alpine

LABEL Author: Kunal Sharma

WORKDIR /app
RUN apk add bash 
RUN adduser -D docker
USER docker
COPY requirement.txt .
RUN pip3 install -r requirement.txt
COPY api-json-data.py .
ENTRYPOINT ["python3", "api-json-data.py"]
