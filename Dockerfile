FROM python:3.12-slim
LABEL maintainer="Jackson Stone <jacksors@tamu.edu>"
LABEL maintainer="Rhiannon Stracener <stracenerrk@tamu.edu>"
LABEL maintainer="Nikki Rad <nikkiraddd@tamu.edu>"
LABEL maintainer="Kim Chen <kimcchen@tamu.edu>"
LABEL version="0.1"
LABEL description="STAT 315/ECEN 360 final project docker image. An analysis on diabetes-related readmission rates."

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y graphviz

RUN pip install --upgrade pip

# Installing packages
RUN pip install \
    jupyter==1.0.0 \
    datasets==2.19.0 \
    matplotlib==3.8.4 \
    seaborn==0.13.2 \
    numpy==1.26.4 \
    pandas==2.2.2 \
    statsmodels==0.14.2 \
    scikit-learn==1.4.2

WORKDIR /home/notebooks/

COPY report.ipynb .
COPY dataset/train.csv ./dataset/train.csv
COPY dataset/test.csv ./dataset/test.csv

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0

EXPOSE 8888