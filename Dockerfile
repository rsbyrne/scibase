FROM rsbyrne:base
MAINTAINER https://github.com/rsbyrne/

RUN sudo apt-get install -y python3-venv
RUN sudo apt-get install -y python3-pip
# Install miniconda
RUN sudo wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda.sh
RUN sudo bash ~/miniconda.sh -b -p $HOME/miniconda

ENV PYTHONPATH "${PYTHONPATH}:$WORKSPACE"
ENV PYTHONPATH "${PYTHONPATH}:$MOUNTDIR"
ENV PYTHONPATH "${PYTHONPATH}:$BASEDIR"

RUN sudo pip3 install --no-cache-dir matplotlib
RUN sudo pip3 install --no-cache-dir scipy
RUN sudo pip3 install --no-cache-dir pandas
RUN sudo pip3 install --no-cache-dir Pillow
RUN sudo pip3 install --no-cache-dir bokeh
RUN sudo pip3 install --no-cache-dir Flask
RUN sudo pip3 install --no-cache-dir dask[complete]
RUN sudo pip3 install --no-cache-dir scikit-learn
RUN sudo pip3 install --no-cache-dir tensorflow
RUN sudo pip3 install --no-cache-dir jupyterlab
RUN sudo pip3 install --no-cache-dir shapely
RUN sudo pip3 install --no-cache-dir geopandas

# Install Node.js - used by JupyterLab
RUN sudo curl -sL https://deb.nodesource.com/setup_10.x | -E bash -
RUN sudo apt-get install -y nodejs
