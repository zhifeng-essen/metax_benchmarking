FROM conda/miniconda3:latest
RUN apt-get update && \
    apt-get install -y git wget && \
    git clone https://github.com/yesimon/metax_bakeoff_2019.git && \
    cd metax_bakeoff_2019 && \
    conda env create -n metax --file envs/py3.yaml && \
    conda env create -n metax_py2 --file envs/py2.yaml && \
    /opt/conda/bin/conda clean --all --yes
    
