FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/datascience:10-rebuild-stack-tf-image-with-tf-cudnn-8-5

RUN mamba install --yes 'autogluon' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

