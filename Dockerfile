FROM codenvy/node

RUN sudo apt-get update && \
    sudo apt-get upgrade -y && \
    sudo apt-get install -y ruby ruby-dev patch nodejs python locales && \
    sudo gem install github-pages && \
    sudo dpkg-reconfigure locales && \
    sudo locale-gen C.UTF-8 && \
    sudo /usr/sbin/update-locale LANG=C.UTF-8 && \
    sudo apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

EXPOSE 4000
