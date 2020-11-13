FROM camptocamp/python-action

COPY backport /usr/bin/backport

ENV PYTHONIOENCODING=utf-8 \
  LANG=en_US.UTF-8 \
  LANGUAGE=en_US.UTF-8

ENTRYPOINT ["backport"]
