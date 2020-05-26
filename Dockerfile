FROM alpine:3.11
RUN apk add --update-cache python3
RUN pip3 install --upgrade pip && pip3 install wheel
COPY src /app
RUN pip3 install -r /app/requirements.txt
WORKDIR /app
EXPOSE 4000
CMD gunicorn --workers 1 --bind 0.0.0.0:4000 front:app
