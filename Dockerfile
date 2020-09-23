FROM adoptopenjdk:11-jdk-openj9

COPY . /home/app/demo

# RUN cd /home/app/demo && gradle assemble test --quiet

RUN cd /home/app/demo && ./gradlew assemble test

RUN rm -rf /home/app/demo
