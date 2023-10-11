FROM cschranz/gpu-jupyter:v1.5_cuda-11.6_ubuntu-20.04_slim

RUN mamba install --yes 'autogluon' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

