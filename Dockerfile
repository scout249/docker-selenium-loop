# syntax=docker/dockerfile:1
FROM joyzoursky/python-chromedriver:3.9-selenium
WORKDIR /tmp
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /data
ENTRYPOINT sh -c 'find . -name "*.py" | xargs -n 1 python'
