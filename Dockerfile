FROM jupyter/datascience-notebook:python-3.10

RUN mamba install --yes 'ta-lib' && \
    mamba clean --all -f -y && \

RUN mamba install --yes 'autogluon' && \
    mamba clean --all -f -y && \

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

