# syntax=docker/dockerfile:1

FROM jupyter/scipy-notebook

LABEL Nerudista <nhsa6ls@gmail.com>

COPY requirements.txt requirements.txt

# Upgrade pip to avoid error installing psutil
RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt    

