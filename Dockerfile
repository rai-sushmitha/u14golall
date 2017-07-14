FROM drydock/u14all:master

ADD . /u14golall

RUN /u14golall/install.sh
