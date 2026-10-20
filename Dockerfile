FROM tensorflow/tensorflow:2.18.0-jupyter

WORKDIR /data

EXPOSE 8888

COPY requirements.txt /data

RUN pip install -r requirements.txt

RUN \
  apt-get update -y && \
  apt-get install graphviz libgl1 libglib2.0-0 -y && \
  apt-get --purge remove -y .\*-doc$ && \
  apt-get clean -y && \
  apt-get autoremove && \
  rm -rf /var/lib/apt/lists/*

COPY Labs /data/Labs

# RUN groupadd -r docker -g 901 && useradd -u 901 -r -g docker docker
# USER docker
# ENV HOME=/user/docker
# WORKDIR ${HOME}

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "-y", "--notebook-dir=/data/Labs"]
