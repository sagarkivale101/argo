FROM docker.io/starburstdata/presto:latest

USER 0

#RUN curl https://repo1.maven.org/maven2/com/facebook/presto/presto-cli/0.271/presto-cli-0.271-executable.jar \
#> /usr/local/bin/presto-cli \
#&& chown  /usr/local/bin/presto-cli \
#&& chmod +x /usr/local/bin/presto-cli

COPY presto-cli-0.271-executable.jar /usr/local/bin/presto-cli
RUN chmod +x /usr/local/bin/presto-cli
USER 1000
