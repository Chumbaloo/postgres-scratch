FROM ubuntu:bionic


RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    libsm6 \
    libxext6 \
    libxrender-dev \    
    netcat \
    vim \
    postgresql-client \    
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && mkdir -pv /app/dev

COPY . /app/dev
COPY docker-entrypoint.sh /usr/local/bin/
WORKDIR /app/dev

EXPOSE 5432
ENTRYPOINT ["docker-entrypoint.sh"]