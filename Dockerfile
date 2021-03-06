FROM debian:9.7-slim

RUN apt-get update && apt-get install -y libicu57 wget unzip

RUN set -ex \
    && wget ftp://webdata2:webdata2@ussd-ftp.illumina.com/downloads/software/iaap/iaap-cli-linux-x64-1.1.0-sha.80d7e5b3d9c1fdfc2e99b472a90652fd3848bbc7.tar.gz \
    && tar xvzf iaap-cli-linux-x64-1.1.0-sha.80d7e5b3d9c1fdfc2e99b472a90652fd3848bbc7.tar.gz \
    && mv iaap-cli-linux-x64-1.1.0-sha.80d7e5b3d9c1fdfc2e99b472a90652fd3848bbc7 /usr/local/bin/iaap-cli \
    && chmod +x /usr/local/bin/iaap-cli/iaap-cli/iaap-cli

ENV PATH "$PATH:/usr/local/bin/iaap-cli/iaap-cli/"
