FROM homeassistant/home-assistant

RUN apt-get update && \
    sudo apt-get install libmysqlclient-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
