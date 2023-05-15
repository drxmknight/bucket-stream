FROM python:3.8-alpine
#RUN apk add py3-pip python3-dev git
RUN apk add git
RUN cd /tmp && git clone https://github.com/eth0izzle/bucket-stream.git
WORKDIR /tmp/bucket-stream
RUN pip3 install wheel
ADD requirements.txt .
ADD bucket-stream.py .
RUN pip3 install -r requirements.txt --ignore-installed six
ENTRYPOINT ["python", "bucket-stream.py"]
