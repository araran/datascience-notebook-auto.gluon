FROM jupyter/datascience-notebook:latest

RUN mamba install -c --yes conda-forge autogluon && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

