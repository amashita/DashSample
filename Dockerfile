FROM python:3.10

ENV DEBIAN_FRONTEND noninteractive
ENV PROJECT_ROOTDIR /work/
WORKDIR $PROJECT_ROOTDIR

COPY ./requirements.txt $PROJECT_ROOTDIR
COPY ./main.py $PROJECT_ROOTDIR

RUN pip install -U pip && \
    pip install -r requirements.txt

EXPOSE 8050