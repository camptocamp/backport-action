FROM camptocamp/python-action

ENV PYTHONIOENCODING=UTF-8


COPY backport /usr/bin/backport

ENTRYPOINT ["backport"]
