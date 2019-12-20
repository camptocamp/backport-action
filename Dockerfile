FROM camptocamp/python-action

COPY backport /usr/bin/backport

ENTRYPOINT ["backport"]
