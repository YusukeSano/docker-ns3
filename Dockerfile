FROM ubuntu:22.04
WORKDIR /home/ns3
COPY . .
RUN DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NOWARNINGS=yes \
    PIP_ROOT_USER_ACTION=ignore \
    bash install.sh
WORKDIR /home/ns3/ns-allinone-3.36.1/ns-3.36.1
