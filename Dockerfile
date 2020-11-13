FROM camptocamp/python-action

COPY backport /usr/bin/backport

ENV PYTHONIOENCODING=utf-8

ENTRYPOINT ["backport"]
