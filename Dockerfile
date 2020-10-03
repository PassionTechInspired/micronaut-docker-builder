FROM gradle:jdk14

COPY . /home/app/demo

RUN cd /home/app/demo && gradle dependencies build test assemble --quiet

RUN rm -rf /home/app/demo
