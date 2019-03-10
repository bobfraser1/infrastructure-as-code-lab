FROM hewlettpackardenterprise/oneview-ansible-debian

LABEL maintainer "Bob Fraser <bobfraser1@gmail.com>"

WORKDIR /root/infrastructure-as-code

COPY  infrastructure-as-code /root/infrastructure-as-code

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y \
    && apt-get install --no-install-recommends -y \
    vim nano git \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/* /root/.cache

CMD [ "/bin/bash" ]
