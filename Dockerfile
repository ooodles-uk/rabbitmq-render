FROM rabbitmq:4.1.6-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

RUN sudo chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie
RUN sudo chmod 400 /var/lib/rabbitmq/.erlang.cookie

USER rabbitmq:rabbitmq
