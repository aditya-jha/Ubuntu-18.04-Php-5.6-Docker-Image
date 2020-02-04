FROM ubuntu:18.04

MAINTAINER adityaiitr@hotmail.com

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get update \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata \
    && apt-get install -y php5.6 \
    && apt-get install -y php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
