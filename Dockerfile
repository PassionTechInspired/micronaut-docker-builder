FROM adoptopenjdk:14-hotspot

RUN apt update && \
    apt install git -y && \
    apt clean

WORKDIR /app/

COPY . .

RUN ./gradlew dependencies assemble build --quiet

RUN ./gradlew clean && rm -rf /home/app/demo
