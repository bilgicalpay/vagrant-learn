FROM alpine:3.7

RUN echo "**** install Python ****" && \
    apk add --no-cache python2 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python2 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python2 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip /usr/bin/pip ; fi

RUN pip install -U Flask && \
    pip install mysql-python

COPY application.py /application.py

ENTRYPOINT MYSQL_USERNAME=$MYSQL_USERNAME \
           MYSQL_PASSWORD=$MYSQL_PASSWORD  \
           MYSQL_INSTANCE_NAME=$MYSQL_INSTANCE_NAME \
           MYSQL_PORT_3306_TCP_ADDR=$MYSQL_PORT_3306_TCP_ADDR \
           MYSQL_PORT_3306_TCP_PORT=$MYSQL_PORT_3306_TCP_PORT \
           python /application.py


