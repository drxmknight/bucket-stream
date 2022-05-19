FROM alpine:latest
RUN apk add python3 py3-pip python3-dev git
RUN cd /tmp && git clone https://github.com/eth0izzle/bucket-stream.git
WORKDIR /tmp/bucket-stream
RUN pip3 install wheel
RUN pip3 install -r requirements.txt --ignore-installed six
ENTRYPOINT ["/usr/bin/python3", "bucket-stream.py"]
