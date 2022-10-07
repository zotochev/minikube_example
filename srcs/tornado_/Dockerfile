FROM python

RUN apt update
RUN apt install -y vim mariadb-client

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install tornado
RUN pip install tortoise-orm[asyncmy]

COPY srcs .

CMD ["python", "main.py"]
