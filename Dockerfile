FROM camptocamp/python-action

RUN \
  apt-get update && \
  apt-get install --assume-yes --no-install-recommends git && \
  apt-get clean && \
  rm --recursive --force /var/lib/apt/lists/

COPY backport /usr/bin/backport

ENTRYPOINT ["backport"]
