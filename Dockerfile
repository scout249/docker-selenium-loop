# syntax=docker/dockerfile:1
FROM joyzoursky/python-chromedriver:3.9-selenium
WORKDIR /pandas
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
# COPY ./pandas .
WORKDIR /config
ENTRYPOINT sh -c 'find . -name "*.py" | xargs -n 1 python'