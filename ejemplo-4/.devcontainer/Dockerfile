# See here for image contents: https://hub.docker.com/r/jupyter/datascience-notebook/

FROM jupyter/datascience-notebook

# Common utils devcontainers feature assumes that the main non-root user (in this case jovyan)
# is in a group with the same name (in this case jovyan).  So we must first make that so.
USER root
RUN apt-get update \
 && groupadd jovyan \
 && usermod -g jovyan -a -G users jovyan \
 && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# [Optional] If your pip requirements rarely change, uncomment this section to add them to the image.
# COPY requirements.txt /tmp/pip-tmp/
# RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
#    && rm -rf /tmp/pip-tmp

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

USER jovyan