FROM rsbyrne/base
MAINTAINER https://github.com/rsbyrne/

USER root

RUN apt-get install -y python3-venv
RUN apt-get install -y python3-pip

ENV PYTHONPATH "${PYTHONPATH}:$WORKSPACE"
ENV PYTHONPATH "${PYTHONPATH}:$MOUNTDIR"
ENV PYTHONPATH "${PYTHONPATH}:$BASEDIR"

RUN pip3 install --no-cache-dir matplotlib
RUN pip3 install --no-cache-dir scipy
RUN pip3 install --no-cache-dir pandas
RUN pip3 install --no-cache-dir Pillow
RUN pip3 install --no-cache-dir bokeh
RUN pip3 install --no-cache-dir Flask
RUN pip3 install --no-cache-dir dask[complete]
RUN pip3 install --no-cache-dir scikit-learn
RUN pip3 install --no-cache-dir tensorflow
RUN pip3 install --no-cache-dir jupyterlab
RUN pip3 install --no-cache-dir shapely
RUN pip3 install --no-cache-dir fiona
RUN pip3 install --no-cache-dir geopandas

# Install Node.js - used by JupyterLab
RUN curl -sL https://deb.nodesource.com/setup_10.x | -E bash -
RUN apt-get install -y nodejs

USER $MASTERUSER

# junk
## Install miniconda
#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda.sh
#RUN bash ~/miniconda.sh -b -p $HOME/miniconda
