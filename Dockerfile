FROM adoptopenjdk:14-hotspot

WORKDIR /home/app/demo
COPY . .

RUN ./gradlew dependencies
RUN ./gradlew assemble
RUN ./gradlew build

RUN ./gradlew clean && /home/app/demo
