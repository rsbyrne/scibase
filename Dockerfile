FROM rsbyrne:base
MAINTAINER https://github.com/rsbyrne/

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
RUN pip3 install --no-cache-dir geopandas

# Install Node.js - used by JupyterLab
RUN curl -sL https://deb.nodesource.com/setup_10.x | -E bash -
RUN apt-get install -y nodejs
