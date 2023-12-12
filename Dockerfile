FROM jupyter/datascience-notebook:python-3.10

RUN mamba install --yes 'autogluon', 'ta-lib' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

