FROM java:8-jre

ENV LOGSTASH_VERSION 2.1.0

# Install Logstash
RUN wget \
    https://download.elastic.co/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz \
    -O /tmp/logstash.tar.gz \
    && tar xfz /tmp/logstash.tar.gz -C /opt \
    && rm /tmp/logstash.tar.gz \
    && mv /opt/logstash-${LOGSTASH_VERSION} /opt/logstash

# Install plugin for development
RUN /opt/logstash/bin/plugin install --development

# Prepare directory & file for test
RUN mkdir -p /test

ADD spec /test/spec
ADD conf /test/conf
ADD usr/local/bin/run.sh /usr/local/bin/run.sh 

CMD ["/usr/local/bin/run.sh"]

