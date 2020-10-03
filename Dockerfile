FROM adoptopenjdk:14-hotspot

WORKDIR /home/app/demo
COPY . .

RUN ./gradlew dependencies assemble build --quiet
RUN ./gradlew clean && /home/app/demo
