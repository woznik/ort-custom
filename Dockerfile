FROM ghcr.io/oss-review-toolkit/ort:35.0.0-040.sha.118fab7
USER 0
RUN wget https://www.signet.pl/repozytorium/ca-bundle.crt -O /usr/local/share/ca-certificates/ca-bundle.crt && update-ca-certificates
RUN keytool -import -cacerts -noprompt -trustcacerts -file /usr/local/share/ca-certificates/ca-bundle.crt -alias OPL_CA -storepass changeit
USER ort
