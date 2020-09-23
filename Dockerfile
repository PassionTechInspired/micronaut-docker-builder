FROM adoptopenjdk:11-jdk-openj9

COPY . /home/app/demo

RUN cd /home/app/demo && ./gradlew assemble test --quiet

RUN rm -rf /home/app/demo
